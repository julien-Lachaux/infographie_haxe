package;

import js.Browser;
/**
 * ...
 * @author Rastaberry
 */

class Main
{

	static function main()
	{
		getInfographie();
	}

	static function getInfographie()
	{
		// on genere le conteneur de notre infographie
		var infographie = Browser.document.createElement('div');
		Browser.document.body.appendChild(infographie);
		infographie.classList.add('infographie');

		// on genere le titre
		var title = Browser.document.createElement('p');
		infographie.appendChild(title);
		title.classList.add('title');
		title.innerHTML = 'année #1 - tronc commun';

		// on genere le sous titre
		var subtitle = Browser.document.createElement('p');
		infographie.appendChild(subtitle);
		subtitle.classList.add('subtitle');
		subtitle.innerHTML = '<span>cursus bachelor</span> "métier du web" | répartition du volume horaire';

		// on genere la barre central
		var centralBar = Browser.document.createElement('div');
		infographie.appendChild(centralBar);
		centralBar.classList.add('central-bar', 'hidden-mobile');

		var centralBarFace = Browser.document.createElement('div');
		var centralBarRight = Browser.document.createElement('div');
		var centralBarBack= Browser.document.createElement('div');
		var centralBarLeft = Browser.document.createElement('div');
		centralBar.appendChild(centralBarFace);
		centralBar.appendChild(centralBarRight);
		centralBar.appendChild(centralBarBack);
		centralBar.appendChild(centralBarLeft);

		centralBarFace.classList.add('face');
		centralBarRight.classList.add('right');
		centralBarLeft.classList.add('back', 'spe');
		centralBarBack.classList.add('left', 'spe');

		// row general
		var general = new Row(infographie, 'general');
		general.getBubble('left', 'Enseignements <br><span class="subContent">fondamentaux</span>', '', 'img/general.png');
		general.getPointille('2');
		general.getCentralDeco('<p class="contenucube">25%</p>', '<img src="img/general.png">');
		general.getPointille('1');
		general.getBubble('right', 'Découverte de la NetEconomie - NTIC - Anglais Gestion de projet - Stratégie juridique & digitale Regard sur le digital', 'black');

		// row marketing
		var marketing = new Row(infographie, 'marketing');
		marketing.getBubble('left', 'Webmarketing <br><span class="subContent">& E-business</span>', '', 'img/market.png');
		marketing.getPointille('2');
		marketing.getCentralDeco('<p class="contenucube">25%</p>', '<img src="img/market.png">');
		marketing.getPointille('1');
		marketing.getBubble('right', 'Techniques éditoriales web - Webmarketing Référencement naturel - Techniques de vente Réseaux sociaux - Management des organisations - Gestion & management', 'pink');

		// row design
		var design = new Row(infographie, 'design');
		design.getBubble('left', 'Webdesign <br><span class="subContent">& création digitale</span>', '', 'img/design.png');
		design.getPointille('2');
		design.getCentralDeco('<p class="contenucube">25%</p>', '<img src="img/design.png">');
		design.getPointille('1');
		design.getBubble('right', 'Photoshop - Illustrator - HTML CSS Conception artistique - Desgin Front-end', 'blue');

		// row devlopment
		var development = new Row(infographie, 'development');
		development.getBubble('left', 'Développement <br><span class="subContent">web & mobile</span>', '', 'img/dev.png');
		development.getPointille('2');
		development.getCentralDeco('<p class="contenucube">25%</p>', '<img src="img/dev.png">');
		development.getPointille('1');
		development.getBubble('right', 'JavaScript - PHP/MySQL - Outils de développement - Sécurité et réseau', 'orange');

		// row projet-final
		var projet = new Row(infographie, 'projet-final');
		projet.getBubble('left', 'Projet <br><span class="subContent">de fin d\'année</span>', '', 'img/projet.png');
		projet.getPointille('2');
		projet.getCentralDeco('<img src="img/projet.png">', '<img src="img/projet2.png">', true);
		projet.getPointille('1');
		projet.getBubble('right', '<b class="font-blue-grey">Site institutionnel</b><br><br>Durée: 3 mois<br>Travail en équipe<br>Soutenance: 45 minutes', 'blue-grey');

		// row stage
		var stage = new Row(infographie, 'stage');
		stage.getBubble('left', 'Stage <br><span class="subContent">en entreprise</span>', '', 'img/stage.png');
		stage.getPointille('2');
		stage.getCentralDeco('<p class="contenucube">2<br>MOIS</p>', '<img src="img/stage.png">', true);
		stage.getPointille('1');
		stage.getBubble('right', 'Stage en entreprise</b><br><br>Facultatif mais fortement conseillé<br>Réelle expérience professionnelle</p>', 'blue-grey');

		// le footer
		var footer = Browser.document.createElement('p');
		infographie.appendChild(footer);
		footer.classList.add('footerEEMI');
		footer.innerHTML = '<span class="copyright">©EEMI 2017</span> - L\' <span class = "uppercase">é</span>cole Européenne des Métiers de l\'Internet - Infographie web réalisé par <a href="https://www.linkedin.com/in / julien - lachaux - 386484b8 / ">Julien Lachaux</a>';

		// les animations
		var animations = new Animation();
		animations.onLoad();
		animations.survolCube('general', 'general', 'grey', 'grey', 'blue-grey', 'dark-grey', 'dark-grey');
		animations.survolCube('marketing', 'marketing', 'pink', 'pink', 'light-pink', 'dark-pink', 'dark-pink');
		animations.survolCube('design', 'design', 'blue', 'blue', 'light-blue', 'dark-blue', 'dark-blue');
		animations.survolCube('development', 'development', 'orange', 'orange', 'light-orange', 'dark-orange', 'dark-orange');
		animations.survolCube('projet-final', 'projet-final', 'grey', 'grey', 'blue-grey', 'dark-grey', 'dark-grey');
		animations.survolCube('stage', 'stage', 'grey', 'grey', 'blue-grey', 'dark-grey', 'dark-grey');
	}
}