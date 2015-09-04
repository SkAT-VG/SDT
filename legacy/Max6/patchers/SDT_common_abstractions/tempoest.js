outlets = 3;

var intervals;
var windowvals;
var tempobins = 400;
var maxtempo = 400;
var minreal = 40*Math.round(tempobins/maxtempo);
var maxreal = 240*Math.round(tempobins/maxtempo);
var tempoarray;
tempoarray = new Array(tempobins);
var resonancefactor = 1.3;

var prevtempo=100;
var prevvalue=1.0;
var tempotolerance = 20;
var changeratio = 1.25;

// Initially a Hanning window for tempo smoothing
windowlength = 29;
windowvals = new Array(windowlength);
for (i=0; i<windowvals.length;i++) {
    windowvals[i] = 0.5*(1-Math.cos(2*Math.PI*(i/(windowvals.length-1))));
}

// Tempo resonance window
temporesonance = new Array(180*Math.round(tempobins/maxtempo)-60*Math.round(tempobins/maxtempo));
for (i=0; i<temporesonance.length; i++) {
    temporesonance[i] = 1+resonancefactor*(0.5*(1-Math.cos(2*Math.PI*(i/(temporesonance.length-1)))));
}

function getWindow() {
    outlet(0, windowvals);
}

// Main function
function anything() {
    if (messagename == "window") {
        windowvals = new Array(arguments.length)
        for (i=0; i<arguments.length; i++) {
            windowvals[i] = arguments[i];
        }
        outlet(0, "Window: " + windowvals);
    }
    else {
        // intervals = new Array(arguments.length);
        initTempoArray();
        calcIntervals(arguments);
        for (i=0; i<intervals.length; i++) {
            pushToTempoArray(getTempo(intervals[i]));
        }
        //outlet(0,intervals);
        filterTempos();
        maxs = getMax();
        outlet(0, maxs[0]);
        outlet(1, maxs[1]);
        //outlet(0, "Avg tempo: " + getTotalTempo());
        //outlet(0, "Intervals: " + intervals);
        outlet(2, tempoarray);
    }
}

function calcIntervals(vals) {
    times = vals.length;
    intervals = new Array(vals.length);
    for(i=0;i<times;i++) {
        temparray = new Array(vals.length-i);
        for (j=i;j<vals.length;j++) {
            if (i == 0) {
                intervals[j] = vals[j];
            }
            else {
                tempsum = vals[j];
                for(k=1;k<i;k++) {
                    tempsum = tempsum + vals[j-k];
                }
                temparray[j-i] = tempsum;
            }
        }
        if (i > 0)
            intervals = intervals.concat(temparray);
    }
}

function initTempoArray() {
    tempoarray = new Array(tempobins);
    for (i=0; i<tempobins; i++) {
        tempoarray[i] = 0;
    }
}

// get maximum tempo
function getMax() {
    var maxvalue = 0;
    var maxindex = 0;
    var tatumindex = 0;
    var previousvalue = 0;
    for (i=0; i<tempoarray.length; i++) {
        if (tempoarray[i] > previousvalue) {
            if (tempoarray[i] > maxvalue) {
                maxvalue = tempoarray [i];
                maxindex = i;
            }
            tatumindex = i;
        }
        previousvalue = tempoarray[i];
    }
    // Tempo jump check
    if (Math.abs(indexToTempo(maxindex) - prevtempo) > tempotolerance) {
        // If smaller change than 'changeratio', preserve previous values
        if ((maxvalue / tempoarray[tempoToIndex(prevtempo)]) < changeratio) {
               maxvalue = prevvalue;
               maxindex = tempoToIndex(prevtempo);
        }
    }
    prevvalue = maxvalue;
    prevtempo = indexToTempo(maxindex);
    return [indexToTempo(maxindex), indexToTempo(tatumindex)];
}

function indexToTempo(val) {
    return (val * (maxtempo/tempobins));
}

function tempoToIndex(val) {
    return (Math.ceil(val / (maxtempo/tempobins)));
}

// IOI in milliseconds to BPM
function getTempo(ioi) {
    return ((1000/ioi)*60);
}

// Calculate mean tempo
function getTotalTempo() {
    var sum;
    sum = 0;
    for (i=0; i<intervals.length; i++) {
        sum = getTempo(intervals[i]) + sum
    }
    sum = (sum / intervals.length);
    return sum;
}

// Adds tempo in BPM to tempoarray
// BPM = 0-maxtempo
function pushToTempoArray(tempo) {
    if (tempo != 0) {
        var tempoinc = (maxtempo/tempobins);
        var index = Math.ceil((tempo / tempoinc));
        // Out of bounds check: max+ -> max
        if (index >= tempoarray.length)
            index = tempoarray.length;
        tempoarray[index] = tempoarray[index] + 1;
    }
}

// Subtracts tempo in BPM from tempoarray
// BPM = 0-maxtempo
function popFromTempoArray(tempo) {
    if (tempo != 0) {
        var tempoinc = (maxtempo/tempobins);
        var index = Math.ceil((tempo / tempoinc));
        // Out of bounds check: max+ -> max
        if (index >= tempoarray.length)
            index = tempoarray.length;
        tempoarray[index] = tempoarray[index] - 1;
    }
}

function getTempoArray() {
    outlet(0, tempoarray);
}

// Convolve tempos with windowvals
function filterTempos() {
    // Filter out unreal tempos
    for(i=0;i<minreal;i++)
        tempoarray[i] = 0;
    for(i=maxreal;i<tempoarray.length;i++)
        tempoarray[i] = 0;
  
    var windowlength = windowvals.length;
    var filterdelay = (windowlength-1)/2;
    var temp = new Array(tempoarray.length);
    // Filtering tempoarray with windowvals
    for (i=0; i<tempoarray.length; i++) {
        var sum = 0;
        for(j=0; j<windowlength; j++) {
            if (i+j < tempoarray.length)
                sum = (tempoarray[i+j] * windowvals[j]) + sum;
        }
        temp[i] = sum;
    }
    for(i=0; i<tempoarray.length; i++) {
        if ((i - filterdelay) > 0)
            tempoarray[i] = temp[i-filterdelay];
    }
    
    // Add tempo resonance
    if (resonancefactor > 0) {
        for(i=0; i<temporesonance.length; i++)
            tempoarray[i+60*Math.round(tempobins/maxtempo)] *= temporesonance[i]*resonancefactor;
    }
}