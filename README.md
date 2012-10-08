Kmeans Cluster
==============

**K-means clustering**


What is Kmeans?
---------------

See also.

+ http://en.wikipedia.org/wiki/K-means_clustering


Tutorial
--------

    require 'kmeans/pair'
    require 'kmeans/pearson'
    require 'kmeans/cluster'
    data = {
    "test01"=>
      {"hoge"=>0,
       "fuga"=>1,
       "piyo"=>0
      },
    "test02"=>
      {"hoge"=>2,
       "fuga"=>1,
       "piyo"=>3
      },
    "test03"=>
      {"hoge"=>3,
       "fuga"=>0,
       "piyo"=>1
      },
    "test04"=>
      {"hoge"=>0,
       "fuga"=>2,
       "piyo"=>0
      },
    "test05"=>
      {"hoge"=>4,
       "fuga"=>2,
       "piyo"=>3
      },
    "test06"=>
      {"hoge"=>3,
       "fuga"=>1,
       "piyo"=>1
      },
    } # 2-dimensional hash
    cluster = Kmeans::Cluster.new(data, {
      :centroids => 4,
      :loop_max => 10
    }) # Options can be omitted.
    cluster.make_cluster
    puts cluster.cluster # => {3=>["test01", "test04"], 1=>["test02"], 2=>["test03", "test05"], 0=>["test06"]}
    # Result changes for each execution


Environment
-----------

After ruby 1.8.


Development
-----------

We need your help.

**Repository**

+ https://github.com/id774/kmeans


ChangeLog
---------

See doc/ChangeLog file.


Developers
----------

See doc/AUTHORS.


Author
------

**774**

+ http://id774.net
+ http://github.com/id774


Copyright and license
---------------------

See the file doc/LICENSE.


