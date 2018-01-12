window.$ = window.jQuery;

$(function() {
  /\d{4}\/\d{2}\/\d{2}/.test(location.pathname) && $('.entry-content')
  .annotator()
  .annotator('setupPlugins', {}, {
      Auth: false,
      Filter: false,
      Tags: false,
      Markdown: false,
      Permissions: {
        user: 'Anonymous',
      },
      Store: {
        prefix: location.protocol + '//' + location.hostname + ':5000',
        annotationData: {
            'uri': location.href
        },
        loadFromSearch: {
            'limit': 20,
            'uri': location.href
        }
      }
  });
});
