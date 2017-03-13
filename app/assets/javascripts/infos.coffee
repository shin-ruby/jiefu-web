$ ->
  editor = new Simditor(
    textarea: $('#editor')
    fileKey: 'upload_file'  #指定服务器获取上传文件数据的参数params["upload_file"]
    upload: {
      url: '/photos'  #对应的request routes
    }
    #toolbar: 更多选项参考 https://github.com/mycolorway/simditor
    toolbar: ['bold', 'italic', 'color', '|', 'ol', 'ul', '|', 'image', '|', 'indent', 'outdent', '|', 'hr', 'table']
  )