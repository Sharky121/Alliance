let player;

function onPlayerReady(evt) {
  evt.target.playVideo();
}

const onPlayerStateChange = (evt) => {
  if (evt.data === YT.PlayerState.ENDED) {
    player.playVideo();
  }
}

export const onYouTubeIframeAPIReady = () => {
  player = new YT.Player('player', {
    playerVars: {
      'autoplay': 1,
      'controls': 0,
      'mute': 1,
      'loop': 1,
      'gyroscope': 1,
      'showinfo': 0,
    },
    height: '1080',
    width: '1920',
    videoId: 'cuPL3QS3hB4',
    events: {
      'onReady': onPlayerReady,
      'onStateChange': onPlayerStateChange,
    }
  });
}
