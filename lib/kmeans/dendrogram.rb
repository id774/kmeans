# -*- coding: utf-8 -*-

require 'RMagick'
include Magick

module Kmeans
  class Dendrogram
    def drawdendrogram(clust, labels, imgfile='clusters.png')
      h = getheight(clust) * 20
      w = 1200
      depth = getdepth(clust)

      scaling = Float(w-150)/depth

      img = Image.new(w,h)
      draw = Draw.new
      draw.stroke('red')
      draw.stroke_width(1)
      draw.line(0, h/2, 10, h/2)

      drawnode(draw, clust, 10, (h/2), scaling, labels)

      draw.draw(img)
      img.write(imgfile)
    end

    def drawnode(draw, clust, x, y, scaling, labels)
      if clust.id < 0
        h1 = getheight(clust.left) * 20
        h2 = getheight(clust.right) * 20
        top = y-(h1+h2)/2
        bottom = y+(h1+h2)/2

        ll = clust.distance*scaling

        draw.stroke('red')
        draw.line(x, top+h1/2, x, bottom-h2/2)

        draw.line(x, top+h1/2, x+ll, top+h1/2)
        draw.line(x, bottom-h2/2, x+ll, bottom-h2/2)

        drawnode(draw, clust.left, x+ll, top+h1/2, scaling, labels)
        drawnode(draw, clust.right, x+ll, bottom-h2/2, scaling, labels)
      else
        draw.font = '/usr/share/fonts/truetype/vlgothic/VL-Gothic-Regular.ttf'
        draw.stroke('transparent')
        draw.fill('black')
        draw.pointsize = 10
        label = labels[clust.id]
        draw.text(x+3, y+4, label) if label != nil
      end
    end

    def getdepth(clust)
      return 0 if clust.left == nil && clust.right == nil
      return [getdepth(clust.left),getdepth(clust.right)].max + clust.distance
    end

    def getheight(clust)
      return 1 if clust.left == nil && clust.right == nil
      return getheight(clust.left) + getheight(clust.right)
    end
  end
end
