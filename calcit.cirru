
{}
  :configs $ {} (:reload-fn |reacher.app.main/reload!) (:port 6001) (:output |src) (:compact-output? true) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo-ui.calcit/
    :init-fn |reacher.app.main/main!
    :extension |.cljs
  :ir $ {} (:package |reacher)
    :files $ {}
      |reacher.app.updater $ {}
        :defs $ {}
          |updater $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {} (:text |data) (:type :leaf) (:at 1584874633844) (:by |rJG4IHzWf)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1519489491135) (:by |root)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1519489492110) (:by |root)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |T $ {} (:text |case-default) (:type :leaf) (:at 1627237272808) (:by |rJG4IHzWf)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |o $ {} (:text |store) (:type :leaf) (:at 1627237275048) (:by |rJG4IHzWf)
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157657108) (:by |root)
                      |j $ {} (:text |data) (:type :leaf) (:at 1584874637339) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1518157547521
                    :by |root
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |reacher.app.updater) (:type :leaf) (:at 1499755354983) (:by |root)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1584874616480) (:by |rJG4IHzWf)
              :type :expr
              :at 1584874614885
              :by |rJG4IHzWf
          :type :expr
          :at 1499755354983
      |reacher.app.config $ {}
        :defs $ {}
          |dev? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf)
              |j $ {} (:text |dev?) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |5 $ {} (:text |=) (:type :leaf) (:at 1624469715390) (:by |rJG4IHzWf)
                  |D $ {} (:text "|\"dev") (:type :leaf) (:at 1624469714304) (:by |rJG4IHzWf)
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |get-env) (:type :leaf) (:at 1624469706777) (:by |rJG4IHzWf)
                      |T $ {} (:text "|\"mode") (:type :leaf) (:at 1624469708397) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1624469701389
                    :by |rJG4IHzWf
                :type :expr
                :at 1624469709435
                :by |rJG4IHzWf
            :type :expr
            :at 1544873875614
            :by |rJG4IHzWf
          |site $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1518157345496) (:by |root)
              |j $ {} (:text |site) (:type :leaf) (:at 1518157327696) (:by |root)
              |r $ {}
                :data $ {}
                  |yf $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956719115) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"workflow") (:type :leaf) (:at 1544956719115) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544956719115
                    :by |rJG4IHzWf
                  |T $ {} (:text |{}) (:type :leaf) (:at 1518157346643) (:by |root)
                :type :expr
                :at 1518157327696
                :by |root
            :type :expr
            :at 1545933382603
            :by |root
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1527788237503
          :by |root
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1527788237503) (:by |root)
            |j $ {} (:text |reacher.app.config) (:type :leaf) (:at 1527788237503) (:by |root)
          :type :expr
          :at 1527788237503
          :by |root
      |reacher.app.schema $ {}
        :defs $ {}
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |reacher.app.schema) (:type :leaf) (:at 1499755354983) (:by |root)
          :type :expr
          :at 1499755354983
      |reacher.util.str $ {}
        :ns $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627238987917)
          :data $ {}
            |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627238987917) (:text |ns)
            |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627238987917) (:text |reacher.util.str)
        :defs $ {}
          |dashed->camel $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627221703867) (:by |rJG4IHzWf)
              |j $ {} (:text |dashed->camel) (:type :leaf) (:at 1627238994820) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |x) (:type :leaf) (:at 1627221703867) (:by |rJG4IHzWf)
                :type :expr
                :at 1627221703867
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |.!replace) (:type :leaf) (:at 1627221703867) (:by |rJG4IHzWf)
                  |j $ {} (:text |x) (:type :leaf) (:at 1627221703867) (:by |rJG4IHzWf)
                  |r $ {} (:text |dashed-letter-pattern) (:type :leaf) (:at 1627221703867) (:by |rJG4IHzWf)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1627221703867) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627221703867) (:text |cc)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627221703867) (:text |pos)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627221703867) (:text |prop)
                        :type :expr
                        :at 1627221703867
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |.!toUpperCase) (:type :leaf) (:at 1627221703867) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |aget) (:type :leaf) (:at 1627221703867) (:by |rJG4IHzWf)
                              |j $ {} (:text |cc) (:type :leaf) (:at 1627221703867) (:by |rJG4IHzWf)
                              |r $ {} (:text |1) (:type :leaf) (:at 1627221703867) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627221703867
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627221703867
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627221703867
                    :by |rJG4IHzWf
                :type :expr
                :at 1627221703867
                :by |rJG4IHzWf
            :type :expr
            :at 1627221703867
            :by |rJG4IHzWf
          |dashed-letter-pattern $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1627221708783) (:by |rJG4IHzWf)
              |j $ {} (:text |dashed-letter-pattern) (:type :leaf) (:at 1627239000876) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |new) (:type :leaf) (:at 1627221725143) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/RegExp) (:type :leaf) (:at 1627221729153) (:by |rJG4IHzWf)
                  |r $ {} (:text "|\"-[a-z]") (:type :leaf) (:at 1627221744661) (:by |rJG4IHzWf)
                  |v $ {} (:text "|\"g") (:type :leaf) (:at 1627221745199) (:by |rJG4IHzWf)
                :type :expr
                :at 1627221708783
                :by |rJG4IHzWf
            :type :expr
            :at 1627221708783
            :by |rJG4IHzWf
          |escape-html $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627235054577) (:by |rJG4IHzWf)
              |j $ {} (:text |escape-html) (:type :leaf) (:at 1627239006708) (:by |rJG4IHzWf)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |text) (:type :leaf) (:at 1627235051509) (:by |rJG4IHzWf)
                :type :expr
                :at 1627235050540
                :by |rJG4IHzWf
              |r $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1627235045895) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627235045895) (:text |nil?)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627235045895) (:text |text)
                    :type :expr
                    :at 1627235045895
                    :by |rJG4IHzWf
                  |r $ {} (:text "|\"") (:type :leaf) (:at 1627235045895) (:by |rJG4IHzWf)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627235045895) (:text |->)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627235045895) (:text |text)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |.!replace) (:type :leaf) (:at 1627235056937) (:by |rJG4IHzWf)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627235045895) (:text "||\"")
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627235045895) (:text ||&quot;)
                        :type :expr
                        :at 1627235045895
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |.!replace) (:type :leaf) (:at 1627235058635) (:by |rJG4IHzWf)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627235045895) (:text ||<)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627235045895) (:text ||&lt;)
                        :type :expr
                        :at 1627235045895
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |.!replace) (:type :leaf) (:at 1627235060010) (:by |rJG4IHzWf)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627235045895) (:text ||>)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627235045895) (:text ||&gt;)
                        :type :expr
                        :at 1627235045895
                        :by |rJG4IHzWf
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |.!replace) (:type :leaf) (:at 1627235061938) (:by |rJG4IHzWf)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627235045895) (:text |&newline)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627235045895) (:text "|\"&#13;&#10;")
                        :type :expr
                        :at 1627235045895
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627235045895
                    :by |rJG4IHzWf
                :type :expr
                :at 1627235045895
                :by |rJG4IHzWf
            :type :expr
            :at 1627235043982
            :by |rJG4IHzWf
          |pattern-non-dimension-props $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1627234916993) (:by |rJG4IHzWf)
              |j $ {} (:text |pattern-non-dimension-props) (:type :leaf) (:at 1627239016257) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |new) (:type :leaf) (:at 1627234931691) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/RegExp) (:type :leaf) (:at 1627234931691) (:by |rJG4IHzWf)
                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234931691) (:text "|\"acit|ex(?:s|g|n|p|$)|rph|grid|ows|mnc|ntw|ine[ch]|zoo|^ord|itera")
                  |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234931691) (:text "|\"i")
                :type :expr
                :at 1627234931691
                :by |rJG4IHzWf
            :type :expr
            :at 1627234916993
            :by |rJG4IHzWf
          |style->string $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627234972298) (:by |rJG4IHzWf)
              |j $ {} (:text |style->string) (:type :leaf) (:at 1627239044397) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |styles) (:type :leaf) (:at 1627234975399) (:by |rJG4IHzWf)
                :type :expr
                :at 1627234975399
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |->) (:type :leaf) (:at 1627234975399) (:by |rJG4IHzWf)
                  |j $ {} (:text |styles) (:type :leaf) (:at 1627234975399) (:by |rJG4IHzWf)
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |.to-list) (:type :leaf) (:at 1627235016223) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627235014407
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |map) (:type :leaf) (:at 1627235008264) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |fn) (:type :leaf) (:at 1627234975399) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |entry) (:type :leaf) (:at 1627235012929) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627234975399
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |let)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627234975399)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |k)
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627234975399)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |first)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |entry)
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627234975399)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |style-name)
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627234975399)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |turn-string)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |k)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |v)
                                      |j $ {}
                                        :data $ {}
                                          |D $ {} (:text |w-log) (:type :leaf) (:at 1627237412260) (:by |rJG4IHzWf)
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |get-style-value)
                                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627234975399)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |last)
                                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |entry)
                                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627234975399)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |dashed->camel)
                                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |style-name)
                                            :type :expr
                                            :at 1627234975399
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627237410907
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627234975399
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627234975399
                                :by |rJG4IHzWf
                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627234975399)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |str)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |style-name)
                                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text ||:)
                                  |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627234975399)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |escape-html)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text |v)
                                  |x $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234975399) (:text ||;)
                            :type :expr
                            :at 1627234975399
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627234975399
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627234975399
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |join-str) (:type :leaf) (:at 1627234975399) (:by |rJG4IHzWf)
                      |j $ {} (:text ||) (:type :leaf) (:at 1627234975399) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627234975399
                    :by |rJG4IHzWf
                :type :expr
                :at 1627234975399
                :by |rJG4IHzWf
            :type :expr
            :at 1627234972298
            :by |rJG4IHzWf
          |get-style-value $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627234902422) (:by |rJG4IHzWf)
              |j $ {} (:text |get-style-value) (:type :leaf) (:at 1627239068246) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |x) (:type :leaf) (:at 1627234905797) (:by |rJG4IHzWf)
                  |j $ {} (:text |prop) (:type :leaf) (:at 1627234905797) (:by |rJG4IHzWf)
                :type :expr
                :at 1627234905797
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |cond) (:type :leaf) (:at 1627234910599) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |string?)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |x)
                        :type :expr
                        :at 1627234910599
                        :by |rJG4IHzWf
                      |j $ {} (:text |x) (:type :leaf) (:at 1627234910599) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627234910599
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |keyword?)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |x)
                        :type :expr
                        :at 1627234910599
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |turn-string) (:type :leaf) (:at 1627234910599) (:by |rJG4IHzWf)
                          |j $ {} (:text |x) (:type :leaf) (:at 1627234910599) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627234910599
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627234910599
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |number?)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |x)
                        :type :expr
                        :at 1627234910599
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |if)
                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627234910599)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |.!test)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |pattern-non-dimension-props)
                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |prop)
                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627234910599)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |str)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |x)
                          |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627234910599)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |str)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |x)
                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text "|\"px")
                        :type :expr
                        :at 1627234910599
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627234910599
                    :by |rJG4IHzWf
                  |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627234910599)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |true)
                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627234910599)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |str)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627234910599) (:text |x)
                :type :expr
                :at 1627234910599
                :by |rJG4IHzWf
            :type :expr
            :at 1627234902422
            :by |rJG4IHzWf
        :proc $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627238987917)
          :data $ {}
        :configs $ {}
      |reacher.app.main $ {}
        :defs $ {}
          |render-app! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |b $ {} (:text |render!) (:type :leaf) (:at 1627239190218) (:by |rJG4IHzWf)
                  |j $ {} (:text |mount-target) (:type :leaf) (:at 1627239193525) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |wrap-comp) (:type :leaf) (:at 1627239460627) (:by |rJG4IHzWf)
                      |T $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {} (:text |@*store) (:type :leaf) (:at 1627219880147) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |persist-storage! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1533919517365) (:by |rJG4IHzWf)
              |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |.!setItem) (:type :leaf) (:at 1623915179125) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956703087) (:by |rJG4IHzWf)
                      |j $ {} (:text |config/site) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |format-cirru-edn) (:type :leaf) (:at 1624469402829) (:by |rJG4IHzWf)
                      |j $ {} (:text |@*store) (:type :leaf) (:at 1627219907325) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
            :type :expr
            :at 1533919515671
            :by |rJG4IHzWf
          |mount-target $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |mount-target) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |.!querySelector) (:type :leaf) (:at 1624469553191) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/document) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {} (:text ||.app) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |main! $ {}
            :data $ {}
              |yL $ {}
                :data $ {}
                  |T $ {} (:text |.!addEventListener) (:type :leaf) (:at 1624469377233) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/window) (:type :leaf) (:at 1518157453505) (:by |root)
                  |r $ {} (:text ||beforeunload) (:type :leaf) (:at 1518157458163) (:by |root)
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |fn) (:type :leaf) (:at 1612344222204) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |event) (:type :leaf) (:at 1612344223520) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1612344222530
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1612344224533
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1612344221583
                    :by |rJG4IHzWf
                :type :expr
                :at 1518157357847
                :by |root
              |yN $ {}
                :data $ {}
                  |T $ {} (:text |repeat!) (:type :leaf) (:at 1544956062322) (:by |rJG4IHzWf)
                  |b $ {} (:text |60) (:type :leaf) (:at 1544956066171) (:by |rJG4IHzWf)
                  |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919535136) (:by |rJG4IHzWf)
                :type :expr
                :at 1533919529874
                :by |rJG4IHzWf
              |yP $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1518157495438) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |raw) (:type :leaf) (:at 1518157496930) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.!getItem) (:type :leaf) (:at 1623915188297) (:by |rJG4IHzWf)
                              |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1518157504638) (:by |root)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956709260) (:by |rJG4IHzWf)
                                  |j $ {} (:text |config/site) (:type :leaf) (:at 1527788293499) (:by |root)
                                :type :expr
                                :at 1518157506313
                                :by |root
                            :type :expr
                            :at 1518157497615
                            :by |root
                        :type :expr
                        :at 1518157495826
                        :by |root
                    :type :expr
                    :at 1518157495644
                    :by |root
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |when) (:type :leaf) (:at 1533919640958) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1518157515786) (:by |root)
                          |j $ {} (:text |raw) (:type :leaf) (:at 1518157516878) (:by |root)
                        :type :expr
                        :at 1518157515117
                        :by |root
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |dispatch!) (:type :leaf) (:at 1518157523818) (:by |root)
                          |j $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157669936) (:by |root)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1624469412598) (:by |rJG4IHzWf)
                              |j $ {} (:text |raw) (:type :leaf) (:at 1518157531240) (:by |root)
                            :type :expr
                            :at 1518157527987
                            :by |root
                        :type :expr
                        :at 1518157521635
                        :by |root
                    :type :expr
                    :at 1518157514334
                    :by |root
                :type :expr
                :at 1518157492640
                :by |root
              |yT $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text "||App started.") (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |main!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1499755354983
              |t $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1544874434638) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"Running mode:") (:type :leaf) (:at 1544874509800) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1544874440190) (:by |rJG4IHzWf)
                      |j $ {} (:text |config/dev?) (:type :leaf) (:at 1544874446442) (:by |rJG4IHzWf)
                      |r $ {} (:text "|\"dev") (:type :leaf) (:at 1544874449063) (:by |rJG4IHzWf)
                      |v $ {} (:text "|\"release") (:type :leaf) (:at 1544874452316) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544874440404
                    :by |rJG4IHzWf
                :type :expr
                :at 1544874433785
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1627237315038) (:by |rJG4IHzWf)
                  |j $ {} (:text |config/dev?) (:type :leaf) (:at 1627237316866) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |load-console-formatter!) (:type :leaf) (:at 1627237325315) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627237319396
                    :by |rJG4IHzWf
                :type :expr
                :at 1627237313935
                :by |rJG4IHzWf
              |x $ {}
                :data $ {}
                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |y $ {}
                :data $ {}
                  |T $ {} (:text |add-watch) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |*store) (:type :leaf) (:at 1627219982164) (:by |rJG4IHzWf)
                  |r $ {} (:text |:changes) (:type :leaf) (:at 1499755354983) (:by |root)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |s) (:type :leaf) (:at 1627219984394) (:by |rJG4IHzWf)
                          |j $ {} (:text |prev) (:type :leaf) (:at 1612280610651) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1499755354983
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |*store $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1627220011847) (:by |rJG4IHzWf)
              |j $ {} (:text |*store) (:type :leaf) (:at 1627219883093) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1627219885750) (:by |rJG4IHzWf)
                :type :expr
                :at 1627219883093
                :by |rJG4IHzWf
            :type :expr
            :at 1627219883093
            :by |rJG4IHzWf
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |dispatch!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |t $ {}
                :data $ {}
                  |D $ {} (:text |when) (:type :leaf) (:at 1547437687530) (:by |root)
                  |L $ {}
                    :data $ {}
                      |D $ {} (:text |and) (:type :leaf) (:at 1584874662518) (:by |rJG4IHzWf)
                      |T $ {} (:text |config/dev?) (:type :leaf) (:at 1547437691006) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |not=) (:type :leaf) (:at 1584874664551) (:by |rJG4IHzWf)
                          |j $ {} (:text |op) (:type :leaf) (:at 1584874665829) (:by |rJG4IHzWf)
                          |r $ {} (:text |:states) (:type :leaf) (:at 1584874671745) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1584874663522
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1584874661674
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |j $ {} (:text |println) (:type :leaf) (:at 1518156276516) (:by |root)
                      |r $ {} (:text "|\"Dispatch:") (:type :leaf) (:at 1547437698992) (:by |root)
                      |v $ {} (:text |op) (:type :leaf) (:at 1518156280471) (:by |root)
                    :type :expr
                    :at 1518156274050
                    :by |root
                :type :expr
                :at 1547437686766
                :by |root
              |v $ {}
                :data $ {}
                  |T $ {} (:text |reset!) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |*store) (:type :leaf) (:at 1627219920129) (:by |rJG4IHzWf)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |updater) (:type :leaf) (:at 1627219928129) (:by |rJG4IHzWf)
                      |j $ {} (:text |@*store) (:type :leaf) (:at 1627219930919) (:by |rJG4IHzWf)
                      |r $ {} (:text |op) (:type :leaf) (:at 1627219932266) (:by |rJG4IHzWf)
                      |v $ {} (:text |op-data) (:type :leaf) (:at 1627219933160) (:by |rJG4IHzWf)
                      |x $ {} (:text |nil) (:type :leaf) (:at 1627220059068) (:by |rJG4IHzWf)
                      |y $ {} (:text |nil) (:type :leaf) (:at 1627220059638) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627219924627
                    :by |rJG4IHzWf
                :type :expr
                :at 1584780634192
                :by |rJG4IHzWf
            :type :expr
            :at 1499755354983
          |reload! $ {}
            :data $ {}
              |D $ {} (:text |defn) (:type :leaf) (:at 1626201153853) (:by |rJG4IHzWf)
              |L $ {} (:text |reload!) (:type :leaf) (:at 1626201157449) (:by |rJG4IHzWf)
              |P $ {}
                :data $ {}
                :type :expr
                :at 1626201163076
                :by |rJG4IHzWf
              |T $ {}
                :data $ {}
                  |D $ {} (:text |if) (:type :leaf) (:at 1626201192115) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |nil?) (:type :leaf) (:at 1626201534497) (:by |rJG4IHzWf)
                      |j $ {} (:text |build-errors) (:type :leaf) (:at 1626201194806) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1626201192626
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |xT $ {}
                        :data $ {}
                          |T $ {} (:text |render-app!) (:type :leaf) (:at 1627219955532) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627219949459
                        :by |rJG4IHzWf
                      |T $ {} (:text |do) (:type :leaf) (:at 1626201161775) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |remove-watch) (:type :leaf) (:at 1614750747553) (:by |rJG4IHzWf)
                          |j $ {} (:text |*store) (:type :leaf) (:at 1627219967360) (:by |rJG4IHzWf)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1614750747553) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1614750747553
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |add-watch) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                          |j $ {} (:text |*store) (:type :leaf) (:at 1627219969298) (:by |rJG4IHzWf)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |s) (:type :leaf) (:at 1627219970994) (:by |rJG4IHzWf)
                                  |j $ {} (:text |prev) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1612280627439
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1612280627439
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1612280627439
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1612280627439
                        :by |rJG4IHzWf
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |hud!) (:type :leaf) (:at 1626777542168) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"ok~") (:type :leaf) (:at 1626777542168) (:by |rJG4IHzWf)
                          |r $ {} (:text "|\"Ok") (:type :leaf) (:at 1626777542168) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1626777542168
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1626201164538
                    :by |rJG4IHzWf
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |hud!) (:type :leaf) (:at 1626290831868) (:by |rJG4IHzWf)
                      |b $ {} (:text "|\"error") (:type :leaf) (:at 1626290930377) (:by |rJG4IHzWf)
                      |j $ {} (:text |build-errors) (:type :leaf) (:at 1626201209903) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1626201203433
                    :by |rJG4IHzWf
                :type :expr
                :at 1626201191606
                :by |rJG4IHzWf
            :type :expr
            :at 1626201152815
            :by |rJG4IHzWf
          |repeat! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1610793045335) (:by |rJG4IHzWf)
              |j $ {} (:text |repeat!) (:type :leaf) (:at 1610793045335) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |duration) (:type :leaf) (:at 1610793047914) (:by |rJG4IHzWf)
                  |j $ {} (:text |cb) (:type :leaf) (:at 1610793055850) (:by |rJG4IHzWf)
                :type :expr
                :at 1610793045335
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |js/setTimeout) (:type :leaf) (:at 1610793066184) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1610793079545) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                        :type :expr
                        :at 1610793080160
                        :by |rJG4IHzWf
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |cb) (:type :leaf) (:at 1610793091010) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1610793090420
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |repeat!) (:type :leaf) (:at 1610793083422) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |*) (:type :leaf) (:at 1610794352418) (:by |rJG4IHzWf)
                              |j $ {} (:text |1000) (:type :leaf) (:at 1610794467961) (:by |rJG4IHzWf)
                              |r $ {} (:text |duration) (:type :leaf) (:at 1610794352418) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1610794352418
                            :by |rJG4IHzWf
                          |r $ {} (:text |cb) (:type :leaf) (:at 1610794361837) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1610793080941
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1610793079106
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |*) (:type :leaf) (:at 1610793072002) (:by |rJG4IHzWf)
                      |L $ {} (:text |1000) (:type :leaf) (:at 1610794470143) (:by |rJG4IHzWf)
                      |T $ {} (:text |duration) (:type :leaf) (:at 1610793071233) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1610793071391
                    :by |rJG4IHzWf
                :type :expr
                :at 1610793056606
                :by |rJG4IHzWf
            :type :expr
            :at 1610793045335
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |reacher.app.main) (:type :leaf) (:at 1499755354983) (:by |root)
            |r $ {}
              :data $ {}
                |yyD $ {}
                  :data $ {}
                    |T $ {} (:text |reacher.core) (:type :leaf) (:at 1627239202854) (:by |rJG4IHzWf)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1627239205708) (:by |rJG4IHzWf)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |render!) (:type :leaf) (:at 1627239208427) (:by |rJG4IHzWf)
                        |j $ {} (:text |wrap-comp) (:type :leaf) (:at 1627239463607) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1627239205971
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1627239200990
                  :by |rJG4IHzWf
                |yyT $ {}
                  :data $ {}
                    |T $ {} (:text "|\"./calcit.build-errors") (:type :leaf) (:at 1626201180939) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1626201183958) (:by |rJG4IHzWf)
                    |r $ {} (:text |build-errors) (:type :leaf) (:at 1626201187310) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1626201173819
                  :by |rJG4IHzWf
                |yyj $ {}
                  :data $ {}
                    |T $ {} (:text "|\"bottom-tip") (:type :leaf) (:at 1626290810913) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1626290816153) (:by |rJG4IHzWf)
                    |r $ {} (:text |hud!) (:type :leaf) (:at 1626290825711) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1626290808117
                  :by |rJG4IHzWf
                |yT $ {}
                  :data $ {}
                    |j $ {} (:text |reacher.app.schema) (:type :leaf) (:at 1627218144660) (:by |rJG4IHzWf)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1499755354983) (:by |root)
                  :type :expr
                  :at 1499755354983
                |yy $ {}
                  :data $ {}
                    |j $ {} (:text |reacher.app.config) (:type :leaf) (:at 1627218146237) (:by |rJG4IHzWf)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1527788306048) (:by |root)
                    |v $ {} (:text |config) (:type :leaf) (:at 1527788306884) (:by |root)
                  :type :expr
                  :at 1527788302920
                  :by |root
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root)
                |v $ {}
                  :data $ {}
                    |j $ {} (:text |reacher.app.comp.container) (:type :leaf) (:at 1627218140614) (:by |rJG4IHzWf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |y $ {}
                  :data $ {}
                    |j $ {} (:text |reacher.app.updater) (:type :leaf) (:at 1627218142778) (:by |rJG4IHzWf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
              :type :expr
              :at 1499755354983
          :type :expr
          :at 1499755354983
      |reacher.app.comp.container $ {}
        :defs $ {}
          |comp-container $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627222832048) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |?) (:type :leaf) (:at 1627223138263) (:by |rJG4IHzWf)
                  |T $ {} (:text |props) (:type :leaf) (:at 1627222878971) (:by |rJG4IHzWf)
                  |j $ {} (:text |children) (:type :leaf) (:at 1627222882145) (:by |rJG4IHzWf)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1507461833421) (:by |root)
                  |L $ {}
                    :data $ {}
                      |v $ {}
                        :data $ {}
                          |D $ {} (:text |*draft) (:type :leaf) (:at 1627239937199) (:by |rJG4IHzWf)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |use-atom) (:type :leaf) (:at 1627239926142) (:by |rJG4IHzWf)
                              |j $ {} (:text "|\"") (:type :leaf) (:at 1627239940198) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627239925841
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627239927661
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1507461834351
                    :by |root
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1499755354983) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |merge) (:type :leaf) (:at 1499755354983) (:by |root)
                                  |j $ {} (:text |ui/global) (:type :leaf) (:at 1521129814235) (:by |root)
                                  |r $ {} (:text |ui/row) (:type :leaf) (:at 1499755354983) (:by |root)
                                :type :expr
                                :at 1499755354983
                            :type :expr
                            :at 1499755354983
                        :type :expr
                        :at 1499755354983
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |textarea) (:type :leaf) (:at 1552321295613) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1512359504843) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:value) (:type :leaf) (:at 1512359505740) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |.get) (:type :leaf) (:at 1627239970519) (:by |rJG4IHzWf)
                                      |T $ {} (:text |*draft) (:type :leaf) (:at 1627239971416) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627239969519
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1512359505095
                                :by |rJG4IHzWf
                              |n $ {}
                                :data $ {}
                                  |T $ {} (:text |:placeholder) (:type :leaf) (:at 1512359565393) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"Content") (:type :leaf) (:at 1626201966743) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1512359562842
                                :by |rJG4IHzWf
                              |p $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1512359618050) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |merge) (:type :leaf) (:at 1512359675059) (:by |rJG4IHzWf)
                                      |L $ {} (:text |ui/expand) (:type :leaf) (:at 1555609489873) (:by |rJG4IHzWf)
                                      |T $ {} (:text |ui/textarea) (:type :leaf) (:at 1512359621430) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1512359676048) (:by |rJG4IHzWf)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:height) (:type :leaf) (:at 1512359679785) (:by |rJG4IHzWf)
                                              |j $ {} (:text |320) (:type :leaf) (:at 1574608185129) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1512359678671
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1512359675605
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1512359674211
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1512359616676
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-change) (:type :leaf) (:at 1627240336911) (:by |rJG4IHzWf)
                                  |r $ {}
                                    :data $ {}
                                      |D $ {} (:text |fn) (:type :leaf) (:at 1573355458962) (:by |rJG4IHzWf)
                                      |L $ {}
                                        :data $ {}
                                          |T $ {} (:text |event) (:type :leaf) (:at 1627220989030) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1573355459236
                                        :by |rJG4IHzWf
                                      |P $ {}
                                        :data $ {}
                                          |T $ {} (:text |.set!) (:type :leaf) (:at 1627240269461) (:by |rJG4IHzWf)
                                          |b $ {} (:text |*draft) (:type :leaf) (:at 1627240223361) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |->) (:type :leaf) (:at 1627220997357) (:by |rJG4IHzWf)
                                              |j $ {} (:text |event) (:type :leaf) (:at 1627220998006) (:by |rJG4IHzWf)
                                              |r $ {} (:text |.-target) (:type :leaf) (:at 1627221000206) (:by |rJG4IHzWf)
                                              |v $ {} (:text |.-value) (:type :leaf) (:at 1627221001461) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627220996348
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627220989699
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1573355456413
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1512359551423
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1512359504511
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1512359496483
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |=<) (:type :leaf) (:at 1499755354983) (:by |root)
                          |j $ {} (:text |8) (:type :leaf) (:at 1584875384898) (:by |rJG4IHzWf)
                          |r $ {} (:text |nil) (:type :leaf) (:at 1499755354983) (:by |root)
                        :type :expr
                        :at 1499755354983
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root)
                          |f $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1512359526843) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1535563522569) (:by |rJG4IHzWf)
                                  |j $ {} (:text |ui/expand) (:type :leaf) (:at 1555609487202) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1535563521753
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1512359526483
                            :by |rJG4IHzWf
                          |o $ {}
                            :data $ {}
                              |T $ {} (:text |=<) (:type :leaf) (:at 1499755354983) (:by |root)
                              |j $ {} (:text ||8px) (:type :leaf) (:at 1499755354983) (:by |root)
                              |r $ {} (:text |nil) (:type :leaf) (:at 1499755354983) (:by |root)
                            :type :expr
                            :at 1499755354983
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |button) (:type :leaf) (:at 1499755354983) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1499755354983) (:by |root)
                                      |j $ {} (:text |ui/button) (:type :leaf) (:at 1499755354983) (:by |root)
                                    :type :expr
                                    :at 1499755354983
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:on-click) (:type :leaf) (:at 1627240386092) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1512359578445) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |event) (:type :leaf) (:at 1627221014867) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1512359578681
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |println) (:type :leaf) (:at 1512359582042) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |.get) (:type :leaf) (:at 1627240233721) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |*draft) (:type :leaf) (:at 1627240235366) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627240232123
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1512359581078
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1512359578073
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1499755354983
                                :type :expr
                                :at 1499755354983
                              |r $ {} (:text "|\"Run") (:type :leaf) (:at 1627223731685) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1499755354983
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1507461832154
                :by |root
            :type :expr
            :at 1499755354983
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |reacher.app.comp.container) (:type :leaf) (:at 1499755354983) (:by |root)
            |v $ {}
              :data $ {}
                |yj $ {}
                  :data $ {}
                    |j $ {} (:text |reacher.app.config) (:type :leaf) (:at 1627218184999) (:by |rJG4IHzWf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1521954064826) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |dev?) (:type :leaf) (:at 1521954067604) (:by |root)
                      :type :expr
                      :at 1521954065004
                      :by |root
                  :type :expr
                  :at 1521954061310
                  :by |root
                |yn $ {}
                  :data $ {}
                    |T $ {} (:text |reacher.core) (:type :leaf) (:at 1627222206061) (:by |rJG4IHzWf)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1627222206729) (:by |rJG4IHzWf)
                    |r $ {}
                      :data $ {}
                        |yT $ {} (:text |button) (:type :leaf) (:at 1627223300555) (:by |rJG4IHzWf)
                        |yj $ {} (:text |use-atom) (:type :leaf) (:at 1627239948163) (:by |rJG4IHzWf)
                        |T $ {} (:text |defcomp) (:type :leaf) (:at 1627222208635) (:by |rJG4IHzWf)
                        |j $ {} (:text |div) (:type :leaf) (:at 1627222209706) (:by |rJG4IHzWf)
                        |r $ {} (:text |=<) (:type :leaf) (:at 1627223022068) (:by |rJG4IHzWf)
                        |v $ {} (:text |textarea) (:type :leaf) (:at 1627223234461) (:by |rJG4IHzWf)
                        |x $ {} (:text |span) (:type :leaf) (:at 1627223235556) (:by |rJG4IHzWf)
                        |y $ {} (:text |input) (:type :leaf) (:at 1627223236775) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1627222206982
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1627222202562
                  :by |rJG4IHzWf
                |yr $ {}
                  :data $ {}
                    |T $ {} (:text "|\"react") (:type :leaf) (:at 1627220547465) (:by |rJG4IHzWf)
                    |j $ {} (:text |:as) (:type :leaf) (:at 1627220549420) (:by |rJG4IHzWf)
                    |r $ {} (:text |React) (:type :leaf) (:at 1627220551500) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1627220545755
                  :by |rJG4IHzWf
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root)
                |r $ {}
                  :data $ {}
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1516527080962) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1499755354983) (:by |root)
                  :type :expr
                  :at 1499755354983
                |u $ {}
                  :data $ {}
                    |T $ {} (:text |respo-ui.core) (:type :leaf) (:at 1627237258196) (:by |rJG4IHzWf)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1627237258946) (:by |rJG4IHzWf)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |hsl) (:type :leaf) (:at 1627237259550) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1627237259166
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1627237253474
                  :by |rJG4IHzWf
              :type :expr
              :at 1499755354983
          :type :expr
          :at 1499755354983
      |reacher.core $ {}
        :defs $ {}
          |map-strip-keyword $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627222157741) (:by |rJG4IHzWf)
              |j $ {} (:text |map-strip-keyword) (:type :leaf) (:at 1627222157741) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |xs) (:type :leaf) (:at 1627222159531) (:by |rJG4IHzWf)
                :type :expr
                :at 1627222157741
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |map) (:type :leaf) (:at 1627222160694) (:by |rJG4IHzWf)
                  |j $ {} (:text |xs) (:type :leaf) (:at 1627222163314) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1627222163857) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |x) (:type :leaf) (:at 1627222164694) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627222164157
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |if) (:type :leaf) (:at 1627222165765) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |keyword?) (:type :leaf) (:at 1627222168197) (:by |rJG4IHzWf)
                              |j $ {} (:text |x) (:type :leaf) (:at 1627222168567) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627222166021
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |turn-string) (:type :leaf) (:at 1627222170843) (:by |rJG4IHzWf)
                              |j $ {} (:text |x) (:type :leaf) (:at 1627222171185) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627222169497
                            :by |rJG4IHzWf
                          |v $ {} (:text |x) (:type :leaf) (:at 1627222172165) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627222165363
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627222163593
                    :by |rJG4IHzWf
                :type :expr
                :at 1627222159933
                :by |rJG4IHzWf
            :type :expr
            :at 1627222157741
            :by |rJG4IHzWf
          |div $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627220571922) (:by |rJG4IHzWf)
              |j $ {} (:text |div) (:type :leaf) (:at 1627220571922) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |props) (:type :leaf) (:at 1627221062973) (:by |rJG4IHzWf)
                  |j $ {} (:text |&) (:type :leaf) (:at 1627221064121) (:by |rJG4IHzWf)
                  |r $ {} (:text |children) (:type :leaf) (:at 1627221066725) (:by |rJG4IHzWf)
                :type :expr
                :at 1627220571922
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |create-element) (:type :leaf) (:at 1627221082807) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"div") (:type :leaf) (:at 1627221084554) (:by |rJG4IHzWf)
                  |r $ {} (:text |props) (:type :leaf) (:at 1627221085897) (:by |rJG4IHzWf)
                  |v $ {} (:text |children) (:type :leaf) (:at 1627221088393) (:by |rJG4IHzWf)
                :type :expr
                :at 1627221079818
                :by |rJG4IHzWf
            :type :expr
            :at 1627220571922
            :by |rJG4IHzWf
          |span $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627223252941) (:by |rJG4IHzWf)
              |j $ {} (:text |span) (:type :leaf) (:at 1627223249954) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223253643) (:text |props)
                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223253643) (:text |&)
                  |r $ {} (:text |children) (:type :leaf) (:at 1627223253643) (:by |rJG4IHzWf)
                :type :expr
                :at 1627223253643
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223253643) (:text |create-element)
                  |j $ {} (:text "|\"span") (:type :leaf) (:at 1627223257771) (:by |rJG4IHzWf)
                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223253643) (:text |props)
                  |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223253643) (:text |children)
                :type :expr
                :at 1627223253643
                :by |rJG4IHzWf
            :type :expr
            :at 1627223249954
            :by |rJG4IHzWf
          |create-element $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627221094544) (:by |rJG4IHzWf)
              |j $ {} (:text |create-element) (:type :leaf) (:at 1627221094544) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |tag) (:type :leaf) (:at 1627221096109) (:by |rJG4IHzWf)
                  |j $ {} (:text |props) (:type :leaf) (:at 1627221094544) (:by |rJG4IHzWf)
                  |r $ {} (:text |children) (:type :leaf) (:at 1627221094544) (:by |rJG4IHzWf)
                :type :expr
                :at 1627221094544
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |React/createElement) (:type :leaf) (:at 1627221364729) (:by |rJG4IHzWf)
                  |b $ {}
                    :data $ {}
                      |D $ {} (:text |turn-string) (:type :leaf) (:at 1627223194247) (:by |rJG4IHzWf)
                      |T $ {} (:text |tag) (:type :leaf) (:at 1627223323927) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627223190615
                    :by |rJG4IHzWf
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |transform-props) (:type :leaf) (:at 1627221390835) (:by |rJG4IHzWf)
                      |j $ {} (:text |props) (:type :leaf) (:at 1627221396035) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627223331422
                    :by |rJG4IHzWf
                  |r $ {} (:text |&) (:type :leaf) (:at 1627221404342) (:by |rJG4IHzWf)
                  |v $ {} (:text |children) (:type :leaf) (:at 1627221411607) (:by |rJG4IHzWf)
                :type :expr
                :at 1627221359523
                :by |rJG4IHzWf
            :type :expr
            :at 1627221094544
            :by |rJG4IHzWf
          |textarea $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627223241808) (:by |rJG4IHzWf)
              |j $ {} (:text |textarea) (:type :leaf) (:at 1627223240677) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223242475) (:text |props)
                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223242475) (:text |&)
                  |r $ {} (:text |children) (:type :leaf) (:at 1627223242475) (:by |rJG4IHzWf)
                :type :expr
                :at 1627223242475
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223242475) (:text |create-element)
                  |j $ {} (:text "|\"textarea") (:type :leaf) (:at 1627223247579) (:by |rJG4IHzWf)
                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223242475) (:text |props)
                  |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223242475) (:text |children)
                :type :expr
                :at 1627223242475
                :by |rJG4IHzWf
            :type :expr
            :at 1627223240677
            :by |rJG4IHzWf
          |input $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627223260890) (:by |rJG4IHzWf)
              |j $ {} (:text |input) (:type :leaf) (:at 1627223259920) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223261659) (:text |props)
                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223261659) (:text |&)
                  |r $ {} (:text |children) (:type :leaf) (:at 1627223261659) (:by |rJG4IHzWf)
                :type :expr
                :at 1627223261659
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223261659) (:text |create-element)
                  |j $ {} (:text "|\"input") (:type :leaf) (:at 1627223266499) (:by |rJG4IHzWf)
                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223261659) (:text |props)
                  |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223261659) (:text |children)
                :type :expr
                :at 1627223261659
                :by |rJG4IHzWf
            :type :expr
            :at 1627223259920
            :by |rJG4IHzWf
          |use-atom $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627239652557) (:by |rJG4IHzWf)
              |j $ {} (:text |use-atom) (:type :leaf) (:at 1627239510786) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |v) (:type :leaf) (:at 1627239634157) (:by |rJG4IHzWf)
                :type :expr
                :at 1627239510786
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1627239661427) (:by |rJG4IHzWf)
                  |T $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |D $ {} (:text |xs) (:type :leaf) (:at 1627239664809) (:by |rJG4IHzWf)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |React/useState) (:type :leaf) (:at 1627239643002) (:by |rJG4IHzWf)
                              |j $ {} (:text |v) (:type :leaf) (:at 1627239646213) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627239635782
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627239662583
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |s) (:type :leaf) (:at 1627239668262) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |aget) (:type :leaf) (:at 1627239674559) (:by |rJG4IHzWf)
                              |j $ {} (:text |xs) (:type :leaf) (:at 1627239675779) (:by |rJG4IHzWf)
                              |r $ {} (:text |0) (:type :leaf) (:at 1627239676037) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627239673153
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627239666873
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |s!) (:type :leaf) (:at 1627239677685) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |aget) (:type :leaf) (:at 1627239679052) (:by |rJG4IHzWf)
                              |j $ {} (:text |xs) (:type :leaf) (:at 1627239679525) (:by |rJG4IHzWf)
                              |r $ {} (:text |1) (:type :leaf) (:at 1627239679915) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627239678103
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627239676824
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627239662194
                    :by |rJG4IHzWf
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |::) (:type :leaf) (:at 1627239704587) (:by |rJG4IHzWf)
                      |j $ {} (:text |%state-ref) (:type :leaf) (:at 1627239716912) (:by |rJG4IHzWf)
                      |r $ {}
                        :data $ {}
                          |D $ {} (:text |[]) (:type :leaf) (:at 1627239919028) (:by |rJG4IHzWf)
                          |T $ {} (:text |s) (:type :leaf) (:at 1627239721293) (:by |rJG4IHzWf)
                          |j $ {} (:text |s!) (:type :leaf) (:at 1627239723163) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627239720803
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627239693725
                    :by |rJG4IHzWf
                :type :expr
                :at 1627239660379
                :by |rJG4IHzWf
            :type :expr
            :at 1627239510786
            :by |rJG4IHzWf
          |=< $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627223028943) (:by |rJG4IHzWf)
              |j $ {} (:text |=<) (:type :leaf) (:at 1627223026544) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |w) (:type :leaf) (:at 1627223031468) (:by |rJG4IHzWf)
                  |j $ {} (:text |h) (:type :leaf) (:at 1627223032539) (:by |rJG4IHzWf)
                :type :expr
                :at 1627223026544
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1627223045101) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |number?) (:type :leaf) (:at 1627223049538) (:by |rJG4IHzWf)
                      |j $ {} (:text |w) (:type :leaf) (:at 1627223050389) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627223045389
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |React/createElement) (:type :leaf) (:at 1627223060707) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"div") (:type :leaf) (:at 1627223063738) (:by |rJG4IHzWf)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |js-object) (:type :leaf) (:at 1627223070489) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text "|\"style") (:type :leaf) (:at 1627223073837) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223080651) (:text |js-object)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text "|\"width") (:type :leaf) (:at 1627223085653) (:by |rJG4IHzWf)
                                      |j $ {} (:text |w) (:type :leaf) (:at 1627223087092) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627223082744
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627223080651
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627223078752
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627223065950
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627223053425
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |React/createElement) (:type :leaf) (:at 1627223060707) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"div") (:type :leaf) (:at 1627223063738) (:by |rJG4IHzWf)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |js-object) (:type :leaf) (:at 1627223070489) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text "|\"style") (:type :leaf) (:at 1627223073837) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627223080651) (:text |js-object)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text "|\"height") (:type :leaf) (:at 1627223095430) (:by |rJG4IHzWf)
                                      |j $ {} (:text |h) (:type :leaf) (:at 1627223096330) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627223082744
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627223080651
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627223078752
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627223065950
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627223053425
                    :by |rJG4IHzWf
                :type :expr
                :at 1627223044763
                :by |rJG4IHzWf
            :type :expr
            :at 1627223026544
            :by |rJG4IHzWf
          |wrap-comp $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627239421191) (:by |rJG4IHzWf)
              |j $ {} (:text |wrap-comp) (:type :leaf) (:at 1627239421191) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |f) (:type :leaf) (:at 1627239430163) (:by |rJG4IHzWf)
                  |j $ {} (:text |props) (:type :leaf) (:at 1627239434296) (:by |rJG4IHzWf)
                  |r $ {} (:text |&) (:type :leaf) (:at 1627239437410) (:by |rJG4IHzWf)
                  |v $ {} (:text |children) (:type :leaf) (:at 1627239439215) (:by |rJG4IHzWf)
                :type :expr
                :at 1627239421191
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |React/createElement) (:type :leaf) (:at 1627239445464) (:by |rJG4IHzWf)
                  |j $ {} (:text |f) (:type :leaf) (:at 1627239446047) (:by |rJG4IHzWf)
                  |r $ {} (:text |props) (:type :leaf) (:at 1627239446926) (:by |rJG4IHzWf)
                  |v $ {} (:text |&) (:type :leaf) (:at 1627239447765) (:by |rJG4IHzWf)
                  |x $ {} (:text |children) (:type :leaf) (:at 1627239449468) (:by |rJG4IHzWf)
                :type :expr
                :at 1627239440413
                :by |rJG4IHzWf
            :type :expr
            :at 1627239421191
            :by |rJG4IHzWf
          |use-effect! $ {}
            :data $ {}
              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627239497887) (:text |defn)
              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627239497887) (:text |use-effect!)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |params) (:type :leaf) (:at 1627239519315) (:by |rJG4IHzWf)
                  |j $ {} (:text |f) (:type :leaf) (:at 1627239519924) (:by |rJG4IHzWf)
                :type :expr
                :at 1627239497887
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |React/useEffect) (:type :leaf) (:at 1627239557110) (:by |rJG4IHzWf)
                  |j $ {} (:text |f) (:type :leaf) (:at 1627239557675) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |js-array) (:type :leaf) (:at 1627239599220) (:by |rJG4IHzWf)
                      |L $ {} (:text |&) (:type :leaf) (:at 1627239600599) (:by |rJG4IHzWf)
                      |T $ {} (:text |params) (:type :leaf) (:at 1627239558821) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627239597197
                    :by |rJG4IHzWf
                :type :expr
                :at 1627239551275
                :by |rJG4IHzWf
            :type :expr
            :at 1627239497887
            :by |rJG4IHzWf
          |%state-ref $ {}
            :data $ {}
              |T $ {} (:text |defrecord!) (:type :leaf) (:at 1627239838711) (:by |rJG4IHzWf)
              |j $ {} (:text |%state-ref) (:type :leaf) (:at 1627239820893) (:by |rJG4IHzWf)
              |v $ {}
                :data $ {}
                  |T $ {} (:text |:get) (:type :leaf) (:at 1627239851781) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1627239883011) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627239883011) (:text |xs)
                        :type :expr
                        :at 1627239883011
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |->) (:type :leaf) (:at 1627240139720) (:by |rJG4IHzWf)
                          |j $ {} (:text |xs) (:type :leaf) (:at 1627240139720) (:by |rJG4IHzWf)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |nth) (:type :leaf) (:at 1627240191570) (:by |rJG4IHzWf)
                              |j $ {} (:text |1) (:type :leaf) (:at 1627240139720) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627240139720
                            :by |rJG4IHzWf
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |nth) (:type :leaf) (:at 1627240192526) (:by |rJG4IHzWf)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627240139720) (:text |0)
                            :type :expr
                            :at 1627240139720
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627240139720
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627239883011
                    :by |rJG4IHzWf
                :type :expr
                :at 1627239850315
                :by |rJG4IHzWf
              |y $ {}
                :data $ {}
                  |T $ {} (:text |:set!) (:type :leaf) (:at 1627240249326) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1627239887808) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |xs) (:type :leaf) (:at 1627239891544) (:by |rJG4IHzWf)
                          |j $ {} (:text |v) (:type :leaf) (:at 1627239904534) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627239888587
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |->) (:type :leaf) (:at 1627240141410) (:by |rJG4IHzWf)
                              |j $ {} (:text |xs) (:type :leaf) (:at 1627240141410) (:by |rJG4IHzWf)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |nth) (:type :leaf) (:at 1627240194734) (:by |rJG4IHzWf)
                                  |j $ {} (:text |1) (:type :leaf) (:at 1627240141410) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627240141410
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |nth) (:type :leaf) (:at 1627240196159) (:by |rJG4IHzWf)
                                  |j $ {} (:text |1) (:type :leaf) (:at 1627240142860) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627240141410
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627240141410
                            :by |rJG4IHzWf
                          |j $ {} (:text |v) (:type :leaf) (:at 1627239907490) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627239895466
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627239886222
                    :by |rJG4IHzWf
                :type :expr
                :at 1627239852338
                :by |rJG4IHzWf
            :type :expr
            :at 1627239820893
            :by |rJG4IHzWf
          |transform-props $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627221416117) (:by |rJG4IHzWf)
              |j $ {} (:text |transform-props) (:type :leaf) (:at 1627221414682) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |props) (:type :leaf) (:at 1627221417591) (:by |rJG4IHzWf)
                :type :expr
                :at 1627221414682
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1627221482114) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |nil?) (:type :leaf) (:at 1627221485660) (:by |rJG4IHzWf)
                      |j $ {} (:text |props) (:type :leaf) (:at 1627223621649) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627221482348
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |&js-object) (:type :leaf) (:at 1627221495158) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627221487602
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |->) (:type :leaf) (:at 1627221509421) (:by |rJG4IHzWf)
                      |j $ {} (:text |props) (:type :leaf) (:at 1627221511369) (:by |rJG4IHzWf)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |map-kv) (:type :leaf) (:at 1627221514574) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1627221515493) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |k) (:type :leaf) (:at 1627221515890) (:by |rJG4IHzWf)
                                  |j $ {} (:text |v) (:type :leaf) (:at 1627221516457) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627221515717
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |D $ {} (:text |if) (:type :leaf) (:at 1627221576890) (:by |rJG4IHzWf)
                                  |L $ {}
                                    :data $ {}
                                      |T $ {} (:text |=) (:type :leaf) (:at 1627221578254) (:by |rJG4IHzWf)
                                      |j $ {} (:text |:style) (:type :leaf) (:at 1627221580247) (:by |rJG4IHzWf)
                                      |r $ {} (:text |k) (:type :leaf) (:at 1627221580834) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627221577338
                                    :by |rJG4IHzWf
                                  |P $ {}
                                    :data $ {}
                                      |T $ {} (:text |[]) (:type :leaf) (:at 1627221581736) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"style") (:type :leaf) (:at 1627221587490) (:by |rJG4IHzWf)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |let) (:type :leaf) (:at 1627235085976) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {}
                                                :data $ {}
                                                  |D $ {} (:text |s) (:type :leaf) (:at 1627235087272) (:by |rJG4IHzWf)
                                                  |T $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:style) (:type :leaf) (:at 1627221612254) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |props) (:type :leaf) (:at 1627221614711) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1627221609617
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1627235086728
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627235086454
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |if) (:type :leaf) (:at 1627235089089) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |nil?) (:type :leaf) (:at 1627235091278) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |s) (:type :leaf) (:at 1627235091816) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627235089320
                                                :by |rJG4IHzWf
                                              |r $ {} (:text "|\"") (:type :leaf) (:at 1627237926302) (:by |rJG4IHzWf)
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |->) (:type :leaf) (:at 1627235093877) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |s) (:type :leaf) (:at 1627235095074) (:by |rJG4IHzWf)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |map-kv) (:type :leaf) (:at 1627237957060) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |fn) (:type :leaf) (:at 1627235105079) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |k) (:type :leaf) (:at 1627237960271) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |v) (:type :leaf) (:at 1627237960513) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1627235105329
                                                            :by |rJG4IHzWf
                                                          |r $ {}
                                                            :data $ {}
                                                              |D $ {} (:text |let) (:type :leaf) (:at 1627237963832) (:by |rJG4IHzWf)
                                                              |L $ {}
                                                                :data $ {}
                                                                  |T $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |prop) (:type :leaf) (:at 1627235145923) (:by |rJG4IHzWf)
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |D $ {} (:text |dashed->camel) (:type :leaf) (:at 1627237568618) (:by |rJG4IHzWf)
                                                                          |T $ {}
                                                                            :data $ {}
                                                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627235147297) (:text |turn-string)
                                                                              |j $ {} (:text |k) (:type :leaf) (:at 1627235147297) (:by |rJG4IHzWf)
                                                                            :type :expr
                                                                            :at 1627235147297
                                                                            :by |rJG4IHzWf
                                                                        :type :expr
                                                                        :at 1627237562656
                                                                        :by |rJG4IHzWf
                                                                    :type :expr
                                                                    :at 1627235144497
                                                                    :by |rJG4IHzWf
                                                                :type :expr
                                                                :at 1627235148183
                                                                :by |rJG4IHzWf
                                                              |T $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627237966912) (:by |rJG4IHzWf)
                                                                  |f $ {} (:text |prop) (:type :leaf) (:at 1627235141668) (:by |rJG4IHzWf)
                                                                  |r $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |get-style-value) (:type :leaf) (:at 1627235123212) (:by |rJG4IHzWf)
                                                                      |j $ {} (:text |v) (:type :leaf) (:at 1627235125988) (:by |rJG4IHzWf)
                                                                      |r $ {} (:text |prop) (:type :leaf) (:at 1627235150860) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1627235118132
                                                                    :by |rJG4IHzWf
                                                                :type :expr
                                                                :at 1627235106796
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1627235143110
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1627235104816
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1627235095841
                                                    :by |rJG4IHzWf
                                                  |v $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |to-js-data) (:type :leaf) (:at 1627237973891) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1627237971217
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1627235093362
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627235088662
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627221587824
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627221581363
                                    :by |rJG4IHzWf
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |[]) (:type :leaf) (:at 1627221517292) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |D $ {} (:text |dashed->camel) (:type :leaf) (:at 1627221564329) (:by |rJG4IHzWf)
                                          |T $ {}
                                            :data $ {}
                                              |D $ {} (:text |turn-string) (:type :leaf) (:at 1627221545739) (:by |rJG4IHzWf)
                                              |T $ {} (:text |k) (:type :leaf) (:at 1627221518742) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627221541939
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627221552970
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |D $ {} (:text |cond) (:type :leaf) (:at 1627223661172) (:by |rJG4IHzWf)
                                          |L $ {}
                                            :data $ {}
                                              |T $ {}
                                                :data $ {}
                                                  |T $ {} (:text |fn?) (:type :leaf) (:at 1627223666677) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |v) (:type :leaf) (:at 1627223666949) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627223661684
                                                :by |rJG4IHzWf
                                              |j $ {} (:text |v) (:type :leaf) (:at 1627223668426) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627223667558
                                            :by |rJG4IHzWf
                                          |T $ {}
                                            :data $ {}
                                              |D $ {} (:text |true) (:type :leaf) (:at 1627223676678) (:by |rJG4IHzWf)
                                              |T $ {}
                                                :data $ {}
                                                  |D $ {} (:text |turn-string) (:type :leaf) (:at 1627221536835) (:by |rJG4IHzWf)
                                                  |T $ {} (:text |v) (:type :leaf) (:at 1627221519206) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627221533480
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627223675784
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627223658923
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627221516974
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627221576383
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627221515169
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627221512144
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |to-js-data) (:type :leaf) (:at 1627221571277) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627221568922
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627221508923
                    :by |rJG4IHzWf
                :type :expr
                :at 1627221421931
                :by |rJG4IHzWf
            :type :expr
            :at 1627221414682
            :by |rJG4IHzWf
          |button $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627223302907) (:by |rJG4IHzWf)
              |j $ {} (:text |button) (:type :leaf) (:at 1627223301427) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |props) (:type :leaf) (:at 1627223303560) (:by |rJG4IHzWf)
                  |j $ {} (:text |&) (:type :leaf) (:at 1627223303560) (:by |rJG4IHzWf)
                  |r $ {} (:text |children) (:type :leaf) (:at 1627223303560) (:by |rJG4IHzWf)
                :type :expr
                :at 1627223303560
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |create-element) (:type :leaf) (:at 1627223303560) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"button") (:type :leaf) (:at 1627223308933) (:by |rJG4IHzWf)
                  |r $ {} (:text |props) (:type :leaf) (:at 1627223303560) (:by |rJG4IHzWf)
                  |v $ {} (:text |children) (:type :leaf) (:at 1627223303560) (:by |rJG4IHzWf)
                :type :expr
                :at 1627223303560
                :by |rJG4IHzWf
            :type :expr
            :at 1627223301427
            :by |rJG4IHzWf
          |render! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627239142755) (:by |rJG4IHzWf)
              |j $ {} (:text |render!) (:type :leaf) (:at 1627239142755) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |target) (:type :leaf) (:at 1627239148414) (:by |rJG4IHzWf)
                  |j $ {} (:text |el) (:type :leaf) (:at 1627239150181) (:by |rJG4IHzWf)
                :type :expr
                :at 1627239142755
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627239158338) (:text |ReactDOM/render)
                  |f $ {} (:text |el) (:type :leaf) (:at 1627239163861) (:by |rJG4IHzWf)
                  |r $ {} (:text |target) (:type :leaf) (:at 1627239165315) (:by |rJG4IHzWf)
                :type :expr
                :at 1627239158338
                :by |rJG4IHzWf
            :type :expr
            :at 1627239142755
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1627218502550
          :by |rJG4IHzWf
        :configs $ {}
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1627218502550) (:by |rJG4IHzWf)
            |j $ {} (:text |reacher.core) (:type :leaf) (:at 1627218502550) (:by |rJG4IHzWf)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1627221762334) (:by |rJG4IHzWf)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text "|\"react") (:type :leaf) (:at 1627221763839) (:by |rJG4IHzWf)
                    |j $ {} (:text |:as) (:type :leaf) (:at 1627221766914) (:by |rJG4IHzWf)
                    |r $ {} (:text |React) (:type :leaf) (:at 1627221769239) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1627221762559
                  :by |rJG4IHzWf
                |n $ {}
                  :data $ {}
                    |T $ {} (:text "|\"react-dom") (:type :leaf) (:at 1627239170961) (:by |rJG4IHzWf)
                    |j $ {} (:text |:as) (:type :leaf) (:at 1627221766914) (:by |rJG4IHzWf)
                    |r $ {} (:text |ReactDOM) (:type :leaf) (:at 1627239172615) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1627221762559
                  :by |rJG4IHzWf
                |r $ {}
                  :data $ {}
                    |T $ {} (:text |reacher.util.str) (:type :leaf) (:at 1627239090432) (:by |rJG4IHzWf)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1627239091772) (:by |rJG4IHzWf)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |get-style-value) (:type :leaf) (:at 1627239092695) (:by |rJG4IHzWf)
                        |j $ {} (:text |dashed->camel) (:type :leaf) (:at 1627239097589) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1627239092433
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1627239083272
                  :by |rJG4IHzWf
              :type :expr
              :at 1627221760904
              :by |rJG4IHzWf
          :type :expr
          :at 1627218502550
          :by |rJG4IHzWf
  :users $ {}
    |root $ {} (:avatar nil) (:name |root) (:nickname |root) (:id |root) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
    |rJG4IHzWf $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |rJG4IHzWf) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
