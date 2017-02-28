package;

import js.Browser;

/**
 * ...
 * @author Rastaberry
 */
class Animation
{
	var cubes : Dynamic;
	var bubbles : Dynamic;
	var pointilles : Dynamic;

	public function new()
	{
		this.cubes = Browser.document.querySelectorAll('div.cube div');
		this.bubbles = Browser.document.querySelectorAll('div.bubble');
		this.pointilles = Browser.document.querySelectorAll('div.pointille');
	}

	private function setOnLoadAnime(a : Dynamic, css1 : String, css2 : String)
	{
		for ( i in 0...a.length )
		{
			if ( i % 2 == 0 )
			{
				a[i].classList.toggle(css1);
			}
			else if ( i % 2 != 0 )
			{
				a[i].classList.toggle(css2);
			}
		}
	}

	public function onLoad()
	{
		// pour les cubes
		setOnLoadAnime(this.cubes, 'animCube1', 'animCube2');
		setOnLoadAnime(this.bubbles, 'animBubbleLeft', 'animBubbleRight');
		setOnLoadAnime(this.pointilles, 'animPointLeft', 'animPointRight');
	}

	public function survolCube(declancheur, cible, border, faceC, rightC, backC, leftC, font = 'ON')
	{
		var cube = Browser.document.querySelector('.' + cible + ' .cube');
		var cubeFaces = cube.querySelectorAll('div');
		var faceStyle = cube.querySelector('.face');
		var rightStyle = cube.querySelector('.right');
		var backStyle = cube.querySelector('.back');
		var leftStyle = cube.querySelector('.left');

		function colorCube()
		{
			faceStyle.classList.toggle(faceC);
			rightStyle.classList.toggle(rightC);
			backStyle.classList.toggle(backC);
			leftStyle.classList.toggle(leftC);

			faceStyle.classList.toggle('animation-' + border);
			rightStyle.classList.toggle('animation-' + border);
			backStyle.classList.toggle('animation-' + border);
			leftStyle.classList.toggle('animation-' + border);

			if (font != 'OFF')
			{
				cube.classList.toggle('font-white');
			}
		}

		var animArea = Browser.document.querySelector('.' + declancheur);
		animArea.addEventListener('mouseover', colorCube);
		animArea.addEventListener('mouseout', colorCube);
	}
}