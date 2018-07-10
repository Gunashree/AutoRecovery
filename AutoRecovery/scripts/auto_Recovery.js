debugger;
recoveryCheck();

function recoveryCheck() {
    var str = JSON.stringify(localStorage);
    var lclVar = str.replace(/[{}]/g, "").split(',');
    var txtTime = ""; var txtSummary = ""; var txtDate = ""; var txtNote = "";
    for (var i = 0; i < lclVar.length; i++) {
        if (lclVar[i].includes('ClinicalNoteTime'))
            txtTime = lclVar[i].split(':"')[0].replace(/["]/g, "");
        else if (lclVar[i].includes('ClinicalNoteSummary'))
            txtSummary = lclVar[i].split(':"')[0].replace(/["]/g, "");
        else if (lclVar[i].includes('ClinicalNoteDate'))
            txtDate = lclVar[i].split(':"')[0].replace(/["]/g, "");
        else if (lclVar[i].includes('ClinicalNoteText'))
            txtNote = lclVar[i].split(':"')[0].replace(/["]/g, "");
    }

    if (localStorage.getItem(txtSummary) || localStorage.getItem(txtNote) || localStorage.getItem(txtDate) || localStorage.getItem(txtTime)) {
        if (confirm("Do you want to retrieve the data?")) {
        }
        else {
            localStorage.clear();
        }
    }
}