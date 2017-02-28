package;

import js.Browser;

/**
 * ...
 * @author Rastaberry
 */

class Row
{
	var parent : Dynamic;
	var nom : String;
	var colors : String;
	var img : String;
	var title : String;
	var text : String;
	var raw : Dynamic;

	public function new(parent, nom)
	{
		this.parent = parent;
		this.nom = nom;

		this.raw = Browser.document.createElement('div');
		parent.appendChild(this.raw);
		this.raw.classList.add('row', nom);
	}

	// fonction pour genere une barre central
	public function getCentralDeco(content1, content2, bar = false)
	{
		var cubeContainer = Browser.document.createElement('div');
		this.raw.appendChild(cubeContainer);
		cubeContainer.classList.add('central-deco', 'col-2');

		if (bar == true)
		{
			var centralBar = Browser.document.createElement('div');
			cubeContainer.appendChild(centralBar);
			centralBar.classList.add('central-bar', 'hidden-mobile');

			var centralBarFace = Browser.document.createElement('div');
			var centralBarRight = Browser.document.createElement('div');
			centralBar.appendChild(centralBarFace);
			centralBar.appendChild(centralBarRight);

			centralBarFace.classList.add('face');
			centralBarRight.classList.add('right');
		}

		getCube(content1, content2, cubeContainer);
	}

	// fonction pour generer une bubble
	// type : ENUM ['title'] or ['description']
	// content : string
	// color : string
	public function getBubble(type, content, color='', img='')
	{
		var i = '1';
		if (type == 'left')
		{
			i = '3';
		}
		else if (type == 'right')
		{
			i = '4';
		}
		// la structure
		var bubble = Browser.document.createElement('div');
		this.raw.appendChild(bubble);
		bubble.classList.add('bubble', type, 'col-' + i);

		// la decoration
		if (color != '')
		{
			var bubbleStick = Browser.document.createElement('div');
			bubble.appendChild(bubbleStick);
			bubbleStick.classList.add('bubble-stick', color);
		}

		// le corp
		var bubbleContent = Browser.document.createElement('div');
		bubble.appendChild(bubbleContent);
		bubbleContent.classList.add('bubble-content');
		if (img != '')
		{
			var bubbleImg = Browser.document.createElement('img');
			bubbleContent.appendChild(bubbleImg);
			bubbleImg.setAttribute('src', img);
		}
		var contentText = Browser.document.createElement('p');
		bubbleContent.appendChild(contentText);
		if (type == 'left')
		{
			contentText.classList.add('contenu');

		}
		else if (type == 'right')
		{
			contentText.classList.add('contenu2');
		}
		contentText.innerHTML = content;
	}

	// fonction pour generer un trait en pointille
	// size : int
	public function getPointille(size)
	{
		var pointille = Browser.document.createElement('div');
		this.raw.appendChild(pointille);
		pointille.classList.add('pointille', 'col-' + size);
	}
	// fonction pour generer un cube
	private function getCube(faceContent='', rightContent='', cubeContainer)
	{
		var cube = Browser.document.createElement('div');
		cubeContainer.appendChild(cube);
		cube.classList.add('cube');

		var face = Browser.document.createElement('div');
		var right = Browser.document.createElement('div');
		var back = Browser.document.createElement('div');
		var left = Browser.document.createElement('div');

		cube.appendChild(face);
		cube.appendChild(right);
		cube.appendChild(back);
		cube.appendChild(left);
		face.classList.add('face');
		right.classList.add('right');
		back.classList.add('back');
		left.classList.add('left');

		if (faceContent != '')
		{
			face.innerHTML = faceContent;
		}

		if (rightContent != '')
		{
			right.innerHTML = rightContent;
		}
	}
}
