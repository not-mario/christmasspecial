//written by diane of wibi
var alllargeeqs = args[1];
var pleasereturnsmall = args[3];
if(pleasereturnsmall) return null;

var eq = null;
while(eq == null) {
	var testeq = new elements.Equipment(alllargeeqs.pop());
	trace(testeq);
	if(
		(!testeq.hastag("notweapon"))
		&&
		(
			(
				testeq.script.indexOf('attack(') != -1 &&
				testeq.script.split('attack(-').join('').indexOf('attack(') != -1
			) || (
				testeq.script.indexOf('drain(') != -1
			)
		) && (
			testeq.getslots().length == 1 &&
			testeq.getslots()[0] == 'NORMAL'
		)
	) {
		eq = testeq;
	}
}

return eq;