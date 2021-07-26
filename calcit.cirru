
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
                  |o $ {}
                    :data $ {}
                      |5 $ {} (:text |do) (:type :leaf) (:at 1627293242504) (:by |rJG4IHzWf)
                      |D $ {}
                        :data $ {}
                          |T $ {} (:text |println) (:type :leaf) (:at 1627293238598) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"unknown op:") (:type :leaf) (:at 1627293247198) (:by |rJG4IHzWf)
                          |r $ {} (:text |op) (:type :leaf) (:at 1627293247446) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627293240573
                        :by |rJG4IHzWf
                      |T $ {} (:text |store) (:type :leaf) (:at 1627237275048) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627293237308
                    :by |rJG4IHzWf
                  |q $ {}
                    :data $ {}
                      |T $ {} (:text |:add-task) (:type :leaf) (:at 1627293301797) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |update) (:type :leaf) (:at 1627293303501) (:by |rJG4IHzWf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1627293304323) (:by |rJG4IHzWf)
                          |r $ {} (:text |:tasks) (:type :leaf) (:at 1627293305228) (:by |rJG4IHzWf)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1627293305788) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |tasks) (:type :leaf) (:at 1627293306695) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627293306029
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |conj) (:type :leaf) (:at 1627293311021) (:by |rJG4IHzWf)
                                  |j $ {} (:text |tasks) (:type :leaf) (:at 1627293335433) (:by |rJG4IHzWf)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627293336228) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:id) (:type :leaf) (:at 1627293336924) (:by |rJG4IHzWf)
                                          |j $ {} (:text |op-id) (:type :leaf) (:at 1627293337926) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627293336475
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:time) (:type :leaf) (:at 1627293340859) (:by |rJG4IHzWf)
                                          |j $ {} (:text |op-time) (:type :leaf) (:at 1627293342828) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627293339017
                                        :by |rJG4IHzWf
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:done?) (:type :leaf) (:at 1627293346200) (:by |rJG4IHzWf)
                                          |j $ {} (:text |false) (:type :leaf) (:at 1627293346804) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627293343306
                                        :by |rJG4IHzWf
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:text |:text) (:type :leaf) (:at 1627293370292) (:by |rJG4IHzWf)
                                          |j $ {} (:text |data) (:type :leaf) (:at 1627293356929) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627293347295
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627293335808
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627293307361
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627293305480
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627293302589
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627293299797
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:rm-task) (:type :leaf) (:at 1627293633120) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |update) (:type :leaf) (:at 1627293634448) (:by |rJG4IHzWf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1627293635241) (:by |rJG4IHzWf)
                          |r $ {} (:text |:tasks) (:type :leaf) (:at 1627293637246) (:by |rJG4IHzWf)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1627293637759) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |tasks) (:type :leaf) (:at 1627293639140) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627293638656
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |->) (:type :leaf) (:at 1627293643374) (:by |rJG4IHzWf)
                                  |j $ {} (:text |tasks) (:type :leaf) (:at 1627293644179) (:by |rJG4IHzWf)
                                  |r $ {}
                                    :data $ {}
                                      |D $ {} (:text |filter) (:type :leaf) (:at 1627293863621) (:by |rJG4IHzWf)
                                      |T $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1627293644929) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |t) (:type :leaf) (:at 1627293646098) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627293645585
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |not=) (:type :leaf) (:at 1627293648460) (:by |rJG4IHzWf)
                                              |j $ {} (:text |data) (:type :leaf) (:at 1627293652259) (:by |rJG4IHzWf)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:id) (:type :leaf) (:at 1627293653903) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |t) (:type :leaf) (:at 1627293654973) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627293652601
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627293647553
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627293644632
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627293766388
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627293640601
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627293637497
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627293633409
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627293631843
                    :by |rJG4IHzWf
                  |s $ {}
                    :data $ {}
                      |T $ {} (:text |:toggle-task) (:type :leaf) (:at 1627293905984) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |update) (:type :leaf) (:at 1627293907466) (:by |rJG4IHzWf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1627293908091) (:by |rJG4IHzWf)
                          |r $ {} (:text |:tasks) (:type :leaf) (:at 1627293909492) (:by |rJG4IHzWf)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1627293910323) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |tasks) (:type :leaf) (:at 1627293911358) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627293910813
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |->) (:type :leaf) (:at 1627293913109) (:by |rJG4IHzWf)
                                  |j $ {} (:text |tasks) (:type :leaf) (:at 1627293914065) (:by |rJG4IHzWf)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |map) (:type :leaf) (:at 1627293915126) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1627293916532) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |task) (:type :leaf) (:at 1627293943322) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627293916871
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |if) (:type :leaf) (:at 1627293927986) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |=) (:type :leaf) (:at 1627293928659) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |data) (:type :leaf) (:at 1627293930740) (:by |rJG4IHzWf)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:id) (:type :leaf) (:at 1627293931491) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |task) (:type :leaf) (:at 1627293932057) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1627293931182
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1627293928494
                                                :by |rJG4IHzWf
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |update) (:type :leaf) (:at 1627293935902) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |task) (:type :leaf) (:at 1627293936463) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |:done?) (:type :leaf) (:at 1627293937487) (:by |rJG4IHzWf)
                                                  |v $ {} (:text |not) (:type :leaf) (:at 1627293938004) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627293933485
                                                :by |rJG4IHzWf
                                              |v $ {} (:text |task) (:type :leaf) (:at 1627293939912) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627293927542
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627293915533
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627293914757
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627293912593
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627293910034
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627293906699
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627293903808
                    :by |rJG4IHzWf
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
                      |D $ {} (:text |wrap-comp) (:type :leaf) (:at 1627280480723) (:by |rJG4IHzWf)
                      |J $ {} (:text |dispatch-provider) (:type :leaf) (:at 1627280561609) (:by |rJG4IHzWf)
                      |P $ {}
                        :data $ {}
                          |T $ {} (:text |js-object) (:type :leaf) (:at 1627280507455) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text "|\"value") (:type :leaf) (:at 1627280510305) (:by |rJG4IHzWf)
                              |j $ {} (:text |dispatch!) (:type :leaf) (:at 1627280512489) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627280508176
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627280501350
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |D $ {} (:text |wrap-comp) (:type :leaf) (:at 1627239460627) (:by |rJG4IHzWf)
                          |T $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |js-object) (:type :leaf) (:at 1627292991395) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |D $ {} (:text |:store) (:type :leaf) (:at 1627292994365) (:by |rJG4IHzWf)
                                  |T $ {} (:text |@*store) (:type :leaf) (:at 1627219880147) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627292992527
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627292982954
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1627280478630
                    :by |rJG4IHzWf
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
                  |D $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293088916) (:text |;)
                  |T $ {} (:text |repeat!) (:type :leaf) (:at 1544956062322) (:by |rJG4IHzWf)
                  |b $ {} (:text |60) (:type :leaf) (:at 1544956066171) (:by |rJG4IHzWf)
                  |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919535136) (:by |rJG4IHzWf)
                :type :expr
                :at 1533919529874
                :by |rJG4IHzWf
              |yP $ {}
                :data $ {}
                  |D $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293078503) (:text |;)
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
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:tasks) (:type :leaf) (:at 1627292961073) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |[]) (:type :leaf) (:at 1627292961613) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627292961290
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627292959884
                    :by |rJG4IHzWf
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
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |js/Date.now) (:type :leaf) (:at 1627293328233) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627293324582
                        :by |rJG4IHzWf
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |js/Date.now) (:type :leaf) (:at 1627293328233) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627293324582
                        :by |rJG4IHzWf
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
                        |v $ {} (:text |dispatch-provider) (:type :leaf) (:at 1627280551242) (:by |rJG4IHzWf)
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
                  |T $ {} (:text |props) (:type :leaf) (:at 1627222878971) (:by |rJG4IHzWf)
                  |b $ {} (:text |?) (:type :leaf) (:at 1627293012611) (:by |rJG4IHzWf)
                  |j $ {} (:text |children) (:type :leaf) (:at 1627222882145) (:by |rJG4IHzWf)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1507461833421) (:by |root)
                  |L $ {}
                    :data $ {}
                      |R $ {}
                        :data $ {}
                          |T $ {} (:text |store) (:type :leaf) (:at 1627293019558) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.-store) (:type :leaf) (:at 1627293023027) (:by |rJG4IHzWf)
                              |j $ {} (:text |props) (:type :leaf) (:at 1627293023669) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627293019899
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627293018843
                        :by |rJG4IHzWf
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
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |d!) (:type :leaf) (:at 1627280576415) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |use-dispatch) (:type :leaf) (:at 1627280579549) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627280576823
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627280574257
                        :by |rJG4IHzWf
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |tasks) (:type :leaf) (:at 1627293147731) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:tasks) (:type :leaf) (:at 1627293149112) (:by |rJG4IHzWf)
                              |j $ {} (:text |store) (:type :leaf) (:at 1627293150612) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627293148368
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627293146150
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
                                  |r $ {} (:text |ui/column) (:type :leaf) (:at 1627293445165) (:by |rJG4IHzWf)
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627293115139) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:padding) (:type :leaf) (:at 1627293121781) (:by |rJG4IHzWf)
                                          |j $ {} (:text |16) (:type :leaf) (:at 1627293127589) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627293115411
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627293114786
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1499755354983
                            :type :expr
                            :at 1499755354983
                        :type :expr
                        :at 1499755354983
                      |n $ {}
                        :data $ {}
                          |D $ {} (:text |div) (:type :leaf) (:at 1627293450446) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627293451048) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627293452683) (:by |rJG4IHzWf)
                                  |j $ {} (:text |ui/row) (:type :leaf) (:at 1627293456334) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627293451857
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627293450683
                            :by |rJG4IHzWf
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |input) (:type :leaf) (:at 1627293098468) (:by |rJG4IHzWf)
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
                                          |T $ {} (:text |ui/input) (:type :leaf) (:at 1627293104554) (:by |rJG4IHzWf)
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
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |=<) (:type :leaf) (:at 1627293459349) (:by |rJG4IHzWf)
                              |j $ {} (:text |8) (:type :leaf) (:at 1627293459349) (:by |rJG4IHzWf)
                              |r $ {} (:text |nil) (:type :leaf) (:at 1627293459349) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627293459349
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293463472) (:text |button)
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627293463472)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293463472) (:text |{})
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627293463472)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293463472) (:text |:style)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293463472) (:text |ui/button)
                                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627293463472)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293463472) (:text |:on-click)
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627293463472)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293463472) (:text |fn)
                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627293463472)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293463472) (:text |event)
                                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627293463472)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293463472) (:text |d!)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293463472) (:text |:add-task)
                                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627293463472)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293463472) (:text |.get)
                                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293463472) (:text |*draft)
                                          |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627293463472)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293463472) (:text |.set!)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293463472) (:text |*draft)
                                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293463472) (:text "|\"")
                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627293463472) (:text "|\"Run")
                            :type :expr
                            :at 1627293463472
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627293449792
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |=<) (:type :leaf) (:at 1627293162611) (:by |rJG4IHzWf)
                          |j $ {} (:text |8) (:type :leaf) (:at 1627293163363) (:by |rJG4IHzWf)
                          |r $ {} (:text |nil) (:type :leaf) (:at 1627293163939) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627293162218
                        :by |rJG4IHzWf
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1627293165244) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627293165759) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627293165439
                            :by |rJG4IHzWf
                          |r $ {} (:text |&) (:type :leaf) (:at 1627293168324) (:by |rJG4IHzWf)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |->) (:type :leaf) (:at 1627293169772) (:by |rJG4IHzWf)
                              |j $ {} (:text |tasks) (:type :leaf) (:at 1627293170854) (:by |rJG4IHzWf)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |map) (:type :leaf) (:at 1627293172135) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1627293172899) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |task) (:type :leaf) (:at 1627293173671) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627293173186
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |D $ {} (:text |wrap-comp) (:type :leaf) (:at 1627293180543) (:by |rJG4IHzWf)
                                          |T $ {} (:text |memod-comp-task) (:type :leaf) (:at 1627294030214) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |&js-object) (:type :leaf) (:at 1627293187702) (:by |rJG4IHzWf)
                                              |j $ {} (:text |:task) (:type :leaf) (:at 1627293195690) (:by |rJG4IHzWf)
                                              |r $ {} (:text |task) (:type :leaf) (:at 1627293196616) (:by |rJG4IHzWf)
                                              |v $ {} (:text |:id) (:type :leaf) (:at 1627293964747) (:by |rJG4IHzWf)
                                              |x $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:id) (:type :leaf) (:at 1627293966963) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |task) (:type :leaf) (:at 1627293967820) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627293966461
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627293183546
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627293174774
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627293172594
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627293171128
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627293169138
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627293164757
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1507461832154
                :by |root
            :type :expr
            :at 1499755354983
          |comp-task $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627286668968) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-task) (:type :leaf) (:at 1627286645891) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |?) (:type :leaf) (:at 1627286861980) (:by |rJG4IHzWf)
                  |j $ {} (:text |props) (:type :leaf) (:at 1627292933280) (:by |rJG4IHzWf)
                  |r $ {} (:text |children) (:type :leaf) (:at 1627286878569) (:by |rJG4IHzWf)
                :type :expr
                :at 1627286645891
                :by |rJG4IHzWf
              |t $ {}
                :data $ {}
                  |T $ {} (:text |use-effect!) (:type :leaf) (:at 1627286890089) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |[]) (:type :leaf) (:at 1627286891718) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |js/Math.random) (:type :leaf) (:at 1627286981290) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627286972761
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627286891242
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1627286899222) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                        :type :expr
                        :at 1627286899508
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |println) (:type :leaf) (:at 1627286905670) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"effect") (:type :leaf) (:at 1627286907098) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627286903209
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627286898780
                    :by |rJG4IHzWf
                :type :expr
                :at 1627286887730
                :by |rJG4IHzWf
              |u $ {}
                :data $ {}
                  |T $ {} (:text |js/console.log) (:type :leaf) (:at 1627292918255) (:by |rJG4IHzWf)
                  |b $ {} (:text "|\"task") (:type :leaf) (:at 1627292924062) (:by |rJG4IHzWf)
                  |j $ {} (:text |props) (:type :leaf) (:at 1627292935753) (:by |rJG4IHzWf)
                :type :expr
                :at 1627292914487
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1627293426218) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |task) (:type :leaf) (:at 1627293427188) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.-task) (:type :leaf) (:at 1627293431450) (:by |rJG4IHzWf)
                              |j $ {} (:text |props) (:type :leaf) (:at 1627293432331) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627293427575
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627293426647
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |d!) (:type :leaf) (:at 1627293777588) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |use-dispatch) (:type :leaf) (:at 1627293779683) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627293777947
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627293777069
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627293426478
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1627286651433) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1627286653088) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1627293546706) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |merge) (:type :leaf) (:at 1627293553576) (:by |rJG4IHzWf)
                                  |T $ {} (:text |ui/row-middle) (:type :leaf) (:at 1627293565485) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627293554408) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:margin) (:type :leaf) (:at 1627293556153) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"4px") (:type :leaf) (:at 1627293560491) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627293554713
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627293554090
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627293552020
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627293545165
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627286651693
                        :by |rJG4IHzWf
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1627293516219) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627293516758) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627293518905) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627293519442) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:background-color) (:type :leaf) (:at 1627293525296) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |D $ {} (:text |if) (:type :leaf) (:at 1627294002022) (:by |rJG4IHzWf)
                                              |L $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:done?) (:type :leaf) (:at 1627294005245) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |task) (:type :leaf) (:at 1627294007143) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627294002370
                                                :by |rJG4IHzWf
                                              |P $ {}
                                                :data $ {}
                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1627294010588) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |0) (:type :leaf) (:at 1627294014179) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |0) (:type :leaf) (:at 1627294016075) (:by |rJG4IHzWf)
                                                  |v $ {} (:text |80) (:type :leaf) (:at 1627294016571) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627294009403
                                                :by |rJG4IHzWf
                                              |T $ {} (:text |:red) (:type :leaf) (:at 1627293530551) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627294001304
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627293520131
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:width) (:type :leaf) (:at 1627293535157) (:by |rJG4IHzWf)
                                          |j $ {} (:text |24) (:type :leaf) (:at 1627293567608) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627293533996
                                        :by |rJG4IHzWf
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:height) (:type :leaf) (:at 1627293538292) (:by |rJG4IHzWf)
                                          |j $ {} (:text |24) (:type :leaf) (:at 1627293568948) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627293536592
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627293519147
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627293517634
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-click) (:type :leaf) (:at 1627293890023) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1627293890708) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1627293890988) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627293891744
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |d!) (:type :leaf) (:at 1627293895092) (:by |rJG4IHzWf)
                                          |j $ {} (:text |:toggle-task) (:type :leaf) (:at 1627293897215) (:by |rJG4IHzWf)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:id) (:type :leaf) (:at 1627293898403) (:by |rJG4IHzWf)
                                              |j $ {} (:text |task) (:type :leaf) (:at 1627293898979) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627293897972
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627293892889
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627293890423
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627293887950
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627293516436
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627293515310
                        :by |rJG4IHzWf
                      |p $ {}
                        :data $ {}
                          |T $ {} (:text |=<) (:type :leaf) (:at 1627293572638) (:by |rJG4IHzWf)
                          |j $ {} (:text |8) (:type :leaf) (:at 1627293573370) (:by |rJG4IHzWf)
                          |r $ {} (:text |nil) (:type :leaf) (:at 1627293573934) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627293572102
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |D $ {} (:text |div) (:type :leaf) (:at 1627293576119) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627293577248) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627293578889) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627293580009) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:min-width) (:type :leaf) (:at 1627293581788) (:by |rJG4IHzWf)
                                          |j $ {} (:text |200) (:type :leaf) (:at 1627293583098) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627293580233
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627293579678
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627293577770
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627293576345
                            :by |rJG4IHzWf
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |:text) (:type :leaf) (:at 1627293436594) (:by |rJG4IHzWf)
                              |j $ {} (:text |task) (:type :leaf) (:at 1627293437796) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627293434255
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627293575518
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |=<) (:type :leaf) (:at 1627293586785) (:by |rJG4IHzWf)
                          |j $ {} (:text |8) (:type :leaf) (:at 1627293587194) (:by |rJG4IHzWf)
                          |r $ {} (:text |nil) (:type :leaf) (:at 1627293587858) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627293585552
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1627293589653) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627293592130) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-click) (:type :leaf) (:at 1627293610500) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1627293611744) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1627293616128) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627293611956
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |d!) (:type :leaf) (:at 1627293619353) (:by |rJG4IHzWf)
                                          |j $ {} (:text |:rm-task) (:type :leaf) (:at 1627293624368) (:by |rJG4IHzWf)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:id) (:type :leaf) (:at 1627293625615) (:by |rJG4IHzWf)
                                              |j $ {} (:text |task) (:type :leaf) (:at 1627293626159) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627293625154
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627293617520
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627293610893
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627293606529
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627293591170
                            :by |rJG4IHzWf
                          |r $ {} (:text "|\"rm") (:type :leaf) (:at 1627293602102) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627293588685
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627286650973
                    :by |rJG4IHzWf
                :type :expr
                :at 1627293425658
                :by |rJG4IHzWf
            :type :expr
            :at 1627286645891
            :by |rJG4IHzWf
          |memod-comp-task $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1627286680325) (:by |rJG4IHzWf)
              |j $ {} (:text |memod-comp-task) (:type :leaf) (:at 1627286680325) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |re-memo) (:type :leaf) (:at 1627286682738) (:by |rJG4IHzWf)
                  |j $ {} (:text |comp-task) (:type :leaf) (:at 1627286690093) (:by |rJG4IHzWf)
                :type :expr
                :at 1627286680325
                :by |rJG4IHzWf
            :type :expr
            :at 1627286680325
            :by |rJG4IHzWf
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
                        |yr $ {} (:text |use-dispatch) (:type :leaf) (:at 1627280583337) (:by |rJG4IHzWf)
                        |yv $ {} (:text |use-effect!) (:type :leaf) (:at 1627286082935) (:by |rJG4IHzWf)
                        |yx $ {} (:text |re-memo) (:type :leaf) (:at 1627286684984) (:by |rJG4IHzWf)
                        |yy $ {} (:text |wrap-comp) (:type :leaf) (:at 1627286769774) (:by |rJG4IHzWf)
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
          |img $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627291935593) (:by |rJG4IHzWf)
              |j $ {} (:text |img) (:type :leaf) (:at 1627291935593) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291938954) (:text |props)
                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291938954) (:text |&)
                  |r $ {} (:text |children) (:type :leaf) (:at 1627291938954) (:by |rJG4IHzWf)
                :type :expr
                :at 1627291938954
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291938954) (:text |create-element)
                  |j $ {} (:text "|\"img") (:type :leaf) (:at 1627291945027) (:by |rJG4IHzWf)
                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291938954) (:text |props)
                  |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291938954) (:text |children)
                :type :expr
                :at 1627291938954
                :by |rJG4IHzWf
            :type :expr
            :at 1627291935593
            :by |rJG4IHzWf
          |pre $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627291952284) (:by |rJG4IHzWf)
              |j $ {} (:text |pre) (:type :leaf) (:at 1627291952284) (:by |rJG4IHzWf)
              |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627291953753)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291953753) (:text |props)
                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291953753) (:text |&)
                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291953753) (:text |children)
              |y $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291953753) (:text |create-element)
                  |j $ {} (:text "|\"pre") (:type :leaf) (:at 1627291957979) (:by |rJG4IHzWf)
                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291953753) (:text |props)
                  |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291953753) (:text |children)
                :type :expr
                :at 1627291953753
                :by |rJG4IHzWf
            :type :expr
            :at 1627291952284
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
          |tag* $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627291663703) (:by |rJG4IHzWf)
              |j $ {} (:text |tag*) (:type :leaf) (:at 1627291663703) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |name) (:type :leaf) (:at 1627291673567) (:by |rJG4IHzWf)
                  |T $ {} (:text |props) (:type :leaf) (:at 1627291667426) (:by |rJG4IHzWf)
                  |j $ {} (:text |&) (:type :leaf) (:at 1627291667426) (:by |rJG4IHzWf)
                  |r $ {} (:text |children) (:type :leaf) (:at 1627291667426) (:by |rJG4IHzWf)
                :type :expr
                :at 1627291667426
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |create-element) (:type :leaf) (:at 1627291667426) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |turn-string) (:type :leaf) (:at 1627291683047) (:by |rJG4IHzWf)
                      |j $ {} (:text |name) (:type :leaf) (:at 1627291683853) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627291677347
                    :by |rJG4IHzWf
                  |r $ {} (:text |props) (:type :leaf) (:at 1627291667426) (:by |rJG4IHzWf)
                  |v $ {} (:text |children) (:type :leaf) (:at 1627291667426) (:by |rJG4IHzWf)
                :type :expr
                :at 1627291667426
                :by |rJG4IHzWf
            :type :expr
            :at 1627291663703
            :by |rJG4IHzWf
          |props-equal $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627286407145) (:by |rJG4IHzWf)
              |j $ {} (:text |props-equal) (:type :leaf) (:at 1627286405888) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |prev) (:type :leaf) (:at 1627286409063) (:by |rJG4IHzWf)
                  |j $ {} (:text |next) (:type :leaf) (:at 1627286411643) (:by |rJG4IHzWf)
                :type :expr
                :at 1627286405888
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1627286483257) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |p-fields) (:type :leaf) (:at 1627286490337) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |js/Object.keys) (:type :leaf) (:at 1627286496898) (:by |rJG4IHzWf)
                              |j $ {} (:text |prev) (:type :leaf) (:at 1627286501593) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627286490785
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627286483658
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |n-fields) (:type :leaf) (:at 1627286505193) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |js/Object.keys) (:type :leaf) (:at 1627286496898) (:by |rJG4IHzWf)
                              |j $ {} (:text |next) (:type :leaf) (:at 1627286507550) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627286490785
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627286483658
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627286483487
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1627286509289) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |=) (:type :leaf) (:at 1627286510398) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.-length) (:type :leaf) (:at 1627286515869) (:by |rJG4IHzWf)
                              |j $ {} (:text |p-fields) (:type :leaf) (:at 1627286518455) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627286512516
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |D $ {} (:text |.-length) (:type :leaf) (:at 1627286524254) (:by |rJG4IHzWf)
                              |T $ {} (:text |n-fields) (:type :leaf) (:at 1627286520846) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627286520982
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627286509607
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |.!every) (:type :leaf) (:at 1627286560679) (:by |rJG4IHzWf)
                          |j $ {} (:text |p-fields) (:type :leaf) (:at 1627286562551) (:by |rJG4IHzWf)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1627286565304) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |k) (:type :leaf) (:at 1627286576221) (:by |rJG4IHzWf)
                                  |j $ {} (:text |idx) (:type :leaf) (:at 1627294075528) (:by |rJG4IHzWf)
                                  |r $ {} (:text |?) (:type :leaf) (:at 1627294076485) (:by |rJG4IHzWf)
                                  |v $ {} (:text |p) (:type :leaf) (:at 1627294079761) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627286565651
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |and) (:type :leaf) (:at 1627286580456) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |.includes) (:type :leaf) (:at 1627286585619) (:by |rJG4IHzWf)
                                      |j $ {} (:text |n-fields) (:type :leaf) (:at 1627286588158) (:by |rJG4IHzWf)
                                      |r $ {} (:text |k) (:type :leaf) (:at 1627286591068) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627286580688
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |=) (:type :leaf) (:at 1627286601770) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |aget) (:type :leaf) (:at 1627286607857) (:by |rJG4IHzWf)
                                          |j $ {} (:text |prev) (:type :leaf) (:at 1627286609955) (:by |rJG4IHzWf)
                                          |r $ {} (:text |k) (:type :leaf) (:at 1627286613062) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627286604108
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |aget) (:type :leaf) (:at 1627286607857) (:by |rJG4IHzWf)
                                          |j $ {} (:text |next) (:type :leaf) (:at 1627286616985) (:by |rJG4IHzWf)
                                          |r $ {} (:text |k) (:type :leaf) (:at 1627286613062) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627286604108
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627286600895
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627286578829
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627286565019
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627286527418
                        :by |rJG4IHzWf
                      |v $ {} (:text |false) (:type :leaf) (:at 1627286531669) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627286508984
                    :by |rJG4IHzWf
                :type :expr
                :at 1627286412104
                :by |rJG4IHzWf
            :type :expr
            :at 1627286405888
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
              |T $ {} (:text |defn) (:type :leaf) (:at 1627291969922) (:by |rJG4IHzWf)
              |j $ {} (:text |input) (:type :leaf) (:at 1627291969922) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |props) (:type :leaf) (:at 1627291971306) (:by |rJG4IHzWf)
                  |j $ {} (:text |&) (:type :leaf) (:at 1627291971306) (:by |rJG4IHzWf)
                  |r $ {} (:text |children) (:type :leaf) (:at 1627291971306) (:by |rJG4IHzWf)
                :type :expr
                :at 1627291971306
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |create-element) (:type :leaf) (:at 1627291971306) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"input") (:type :leaf) (:at 1627291977019) (:by |rJG4IHzWf)
                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291971306) (:text |props)
                  |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291971306) (:text |children)
                :type :expr
                :at 1627291971306
                :by |rJG4IHzWf
            :type :expr
            :at 1627291969922
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
              |T $ {} (:text |defn) (:type :leaf) (:at 1627239497887) (:by |rJG4IHzWf)
              |j $ {} (:text |use-effect!) (:type :leaf) (:at 1627239497887) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |params) (:type :leaf) (:at 1627239519315) (:by |rJG4IHzWf)
                  |j $ {} (:text |f) (:type :leaf) (:at 1627239519924) (:by |rJG4IHzWf)
                :type :expr
                :at 1627239497887
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1627285911298) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |r*) (:type :leaf) (:at 1627285930680) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |React/useRef) (:type :leaf) (:at 1627286089057) (:by |rJG4IHzWf)
                              |j $ {} (:text |params) (:type :leaf) (:at 1627285917872) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627285914072
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627285912358
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627285911924
                    :by |rJG4IHzWf
                  |P $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1627285923450) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |not=) (:type :leaf) (:at 1627286024947) (:by |rJG4IHzWf)
                          |j $ {} (:text |params) (:type :leaf) (:at 1627285927165) (:by |rJG4IHzWf)
                          |r $ {}
                            :data $ {}
                              |D $ {} (:text |.-current) (:type :leaf) (:at 1627285937235) (:by |rJG4IHzWf)
                              |T $ {} (:text |r*) (:type :leaf) (:at 1627285933417) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627285934524
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627285925516
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |D $ {} (:text |do) (:type :leaf) (:at 1627285990106) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |set!) (:type :leaf) (:at 1627286130256) (:by |rJG4IHzWf)
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627285993108)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627285993108) (:text |.-current)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627285993108) (:text |r*)
                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627285993108) (:text |params)
                            :type :expr
                            :at 1627285993108
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627285989123
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627285922959
                    :by |rJG4IHzWf
                  |h $ {}
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627286022529) (:text |React/useEffect)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627286022529) (:text |f)
                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627286022529)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627286022529) (:text |js-array)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627286022529) (:text |&)
                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627286022529)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627286022529) (:text |.-current)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627286022529) (:text |r*)
                    :type :expr
                    :at 1627286022529
                    :by |rJG4IHzWf
                :type :expr
                :at 1627285909603
                :by |rJG4IHzWf
            :type :expr
            :at 1627239497887
            :by |rJG4IHzWf
          |context-of-dispatch $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1627280383569) (:by |rJG4IHzWf)
              |j $ {} (:text |context-of-dispatch) (:type :leaf) (:at 1627280380109) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |React/createContext) (:type :leaf) (:at 1627280390118) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1627280391777) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |op) (:type :leaf) (:at 1627280395591) (:by |rJG4IHzWf)
                          |j $ {} (:text |data) (:type :leaf) (:at 1627280397371) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627280392081
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |js/console.warn) (:type :leaf) (:at 1627280402722) (:by |rJG4IHzWf)
                          |b $ {} (:text "|\"missing dispatch function") (:type :leaf) (:at 1627280441879) (:by |rJG4IHzWf)
                          |j $ {} (:text |op) (:type :leaf) (:at 1627280417843) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627280397688
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627280391523
                    :by |rJG4IHzWf
                :type :expr
                :at 1627280380109
                :by |rJG4IHzWf
            :type :expr
            :at 1627280380109
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
          |canvas $ {}
            :data $ {}
              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291912764) (:text |defn)
              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291912764) (:text |canvas)
              |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627291915417)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291915417) (:text |props)
                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291915417) (:text |&)
                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291915417) (:text |children)
              |x $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291915417) (:text |create-element)
                  |j $ {} (:text "|\"div") (:type :leaf) (:at 1627291921881) (:by |rJG4IHzWf)
                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291915417) (:text |props)
                  |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291915417) (:text |children)
                :type :expr
                :at 1627291915417
                :by |rJG4IHzWf
            :type :expr
            :at 1627291912764
            :by |rJG4IHzWf
          |use-dispatch $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627280587197) (:by |rJG4IHzWf)
              |j $ {} (:text |use-dispatch) (:type :leaf) (:at 1627280583913) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1627280583913
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |React/useContext) (:type :leaf) (:at 1627280595908) (:by |rJG4IHzWf)
                  |j $ {} (:text |context-of-dispatch) (:type :leaf) (:at 1627280605348) (:by |rJG4IHzWf)
                :type :expr
                :at 1627280589014
                :by |rJG4IHzWf
            :type :expr
            :at 1627280583913
            :by |rJG4IHzWf
          |a $ {}
            :data $ {}
              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291893595) (:text |defn)
              |j $ {} (:text |a) (:type :leaf) (:at 1627291897778) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291898722) (:text |props)
                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291898722) (:text |&)
                  |r $ {} (:text |children) (:type :leaf) (:at 1627291898722) (:by |rJG4IHzWf)
                :type :expr
                :at 1627291898722
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291898722) (:text |create-element)
                  |j $ {} (:text "|\"a") (:type :leaf) (:at 1627291903419) (:by |rJG4IHzWf)
                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291898722) (:text |props)
                  |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627291898722) (:text |children)
                :type :expr
                :at 1627291898722
                :by |rJG4IHzWf
            :type :expr
            :at 1627291893595
            :by |rJG4IHzWf
          |re-memo $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627286370853) (:by |rJG4IHzWf)
              |j $ {} (:text |re-memo) (:type :leaf) (:at 1627286370853) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |c) (:type :leaf) (:at 1627286379947) (:by |rJG4IHzWf)
                :type :expr
                :at 1627286370853
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |React/memo) (:type :leaf) (:at 1627286384430) (:by |rJG4IHzWf)
                  |j $ {} (:text |c) (:type :leaf) (:at 1627286393310) (:by |rJG4IHzWf)
                  |r $ {} (:text |props-equal) (:type :leaf) (:at 1627286404796) (:by |rJG4IHzWf)
                :type :expr
                :at 1627286381610
                :by |rJG4IHzWf
            :type :expr
            :at 1627286370853
            :by |rJG4IHzWf
          |dispatch-provider $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1627280552463) (:by |rJG4IHzWf)
              |j $ {} (:text |dispatch-provider) (:type :leaf) (:at 1627280552463) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627280553369) (:text |.-Provider)
                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627280553369) (:text |context-of-dispatch)
                :type :expr
                :at 1627280553369
                :by |rJG4IHzWf
            :type :expr
            :at 1627280552463
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
