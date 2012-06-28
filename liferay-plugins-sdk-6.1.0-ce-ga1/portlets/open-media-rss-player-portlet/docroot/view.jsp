<%
/**
 * Copyright (c) 2000-2012 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />
	<script type="text/javascript" src="/open-media-rss-player-portlet/js/lib/jQuery/jquery-1.6.2.js"></script>
	<script type="text/javascript" src="/open-media-rss-player-portlet/js/lib/mediaplayer-5.9/jwplayer.js"></script>
	<script type="text/javascript" src="/open-media-rss-player-portlet/js/html5.video.player.js"></script>
	<input type="hidden" id="rssUrl" value="rss.jsp?feed=<%=request.getParameter("feed")%>" />
	<div id="mediaplayer">JW Player goes here</div>
	<script type="text/javascript">
		$('#submit').click(
			function(){
				loadPlayer($('#rssUrl').val());
			}
		);

		function loadPlayer(playlistUrl) {
			jwplayer('mediaplayer').setup({
				'flashplayer': '/open-media-rss-player-portlet/js/lib/mediaplayer-5.9/player.swf',
				'id': 'playerID',
				'width': '480',
				'height': '430',
				'playlistfile': playlistUrl,
				'playlist.position': 'bottom',
				'playlist.size': '150',
				'controlbar': 'over',
				'repeat': 'list',
				'skin': "/open-media-rss-player-portlet/jwplayer/skins/stormtrooper.zip",
				'plugins': {
				   		'gapro-2': {}
						}
			});
		};
		
		$(function () {
			loadPlayer($('#rssUrl').val());
		}); 
	</script>