****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH _WARN_  $    4; 

******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_final = 'Predicted: final' ;
label V_final = 'Validated: final' ;
label _WARN_ = 'Warnings' ;



******             ASSIGN OBSERVATION TO NODE             ******;

 DROP _BRANCH_;
_BRANCH_ = -1;
  IF  NOT MISSING(sec ) AND 
  sec  <               80.305 THEN DO;
   _BRANCH_ =    1; 
  END; 
  ELSE IF  NOT MISSING(sec ) AND 
                80.305 <= sec  THEN DO;
   _BRANCH_ =    2; 
  END; 
IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
    IF study  <                  2.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
    ELSE IF                  2.5 <= study  THEN DO;
     _BRANCH_ =    2; 
    END; 
   ELSE _BRANCH_ =    2; 
  END;
IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
    IF                  8.5 <= sect  THEN DO;
     _BRANCH_ =    1; 
    END; 
    ELSE IF sect  <                  8.5 THEN DO;
     _BRANCH_ =    2; 
    END; 
   ELSE _BRANCH_ =    1; 
  END;
IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
    IF               2107.5 <= scho  THEN DO;
     _BRANCH_ =    1; 
    END; 
    ELSE IF scho  <               2107.5 THEN DO;
     _BRANCH_ =    2; 
    END; 
   ELSE _BRANCH_ =    1; 
  END;
IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
    IF town  <                 33.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
    ELSE IF                 33.5 <= town  THEN DO;
     _BRANCH_ =    2; 
    END; 
   ELSE _BRANCH_ =    2; 
  END;
IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

IF _BRANCH_ EQ    1 THEN DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(sec ) AND 
    sec  <               71.305 THEN DO;
     _BRANCH_ =    1; 
    END; 
    ELSE IF  NOT MISSING(sec ) AND 
                  71.305 <= sec  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
      IF study  <                  2.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
      ELSE IF                  2.5 <= study  THEN DO;
       _BRANCH_ =    2; 
      END; 
     ELSE _BRANCH_ =    2; 
    END;
  IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
      IF nat  <                 49.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
      ELSE IF                 49.5 <= nat  THEN DO;
       _BRANCH_ =    2; 
      END; 
     ELSE _BRANCH_ =    2; 
    END;
  IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
      IF scho  <                 32.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
      ELSE IF                 32.5 <= scho  THEN DO;
       _BRANCH_ =    2; 
      END; 
     ELSE _BRANCH_ =    2; 
    END;
  IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
      IF                 45.5 <= town  THEN DO;
       _BRANCH_ =    1; 
      END; 
      ELSE IF town  <                 45.5 THEN DO;
       _BRANCH_ =    2; 
      END; 
     ELSE _BRANCH_ =    1; 
    END;
  IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

  IF _BRANCH_ EQ    1 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sec ) AND 
      sec  <                0.305 THEN DO;
       _BRANCH_ =    1; 
      END; 
      ELSE IF  NOT MISSING(sec ) AND 
                     0.305 <= sec  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
        IF nat  <                 21.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF                 21.5 <= nat  THEN DO;
         _BRANCH_ =    2; 
        END; 
       ELSE _BRANCH_ =    2; 
      END;
    IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

    IF _BRANCH_ EQ    1 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(sect ) AND 
        sect  <                  8.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF  NOT MISSING(sect ) AND 
                         8.5 <= sect  THEN DO;
         _BRANCH_ =    2; 
        END; 
      IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
          IF study  <                  3.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF                  3.5 <= study  THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    2; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
          IF nat  <                 71.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF                 71.5 <= nat  THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    2; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
          IF                   22 <= town  THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF town  <                   22 THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    1; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
          IF                 21.5 <= scho  THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF scho  <                 21.5 THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    1; 
        END;
      IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

      IF _BRANCH_ EQ    2 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(town ) AND 
          town  <                 31.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF  NOT MISSING(town ) AND 
                          31.5 <= town  THEN DO;
           _BRANCH_ =    2; 
          END; 
        IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
            IF                 1320 <= scho  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF scho  <                 1320 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
            IF nat  <                 49.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF                 49.5 <= nat  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
            IF study  <                  4.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF                  4.5 <= study  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

        IF _BRANCH_ EQ    1 THEN DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(town ) AND 
            town  <                 20.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(town ) AND 
                            20.5 <= town  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
              IF nat  <                   34 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                   34 <= nat  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF scho  <                 12.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                 12.5 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

          IF _BRANCH_ EQ    1 THEN DO;
            _NODE_  =                   68;
            _LEAF_  =                    5;
            P_final  =     4.93877551020408;
            V_final  =     4.63636363636363;
            END;
          ELSE DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(town ) AND 
              town  <                   22 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(town ) AND 
                                22 <= town  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                IF scho  <                 1738 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                 1738 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
                IF                  4.5 <= study  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF study  <                  4.5 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                IF                   69 <= nat  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF nat  <                   69 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

            IF _BRANCH_ EQ    1 THEN DO;
              _NODE_  =                  130;
              _LEAF_  =                    6;
              P_final  =     4.10344827586207;
              V_final  =     4.08333333333333;
              END;
            ELSE DO;
              _NODE_  =                  131;
              _LEAF_  =                    7;
              P_final  =     4.55844155844155;
              V_final  =                 4.68;
              END;
            END;
          END;
        ELSE DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(town ) AND 
            town  <                 40.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(town ) AND 
                            40.5 <= town  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
              IF                  2.5 <= study  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF study  <                  2.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
              IF nat  <                   61 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                   61 <= nat  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF               1264.5 <= scho  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF scho  <               1264.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

          IF _BRANCH_ EQ    2 THEN DO;
            _NODE_  =                   71;
            _LEAF_  =                   11;
            P_final  =     4.67961165048543;
            V_final  =     4.58536585365853;
            END;
          ELSE DO;
            IF  NOT MISSING(study ) AND 
              study  <                  2.5 THEN DO;
              _NODE_  =                  132;
              _LEAF_  =                    8;
              P_final  =     4.45454545454545;
              V_final  =                    4;
              END;
            ELSE DO;
              IF  NOT MISSING(nat ) AND 
                nat  <                 41.5 THEN DO;
                _NODE_  =                  212;
                _LEAF_  =                    9;
                P_final  =               5.8125;
                V_final  =     5.66666666666666;
                END;
              ELSE DO;
                _NODE_  =                  213;
                _LEAF_  =                   10;
                P_final  =     5.30681818181818;
                V_final  =                 5.16;
                END;
              END;
            END;
          END;
        END;
      ELSE DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(nat ) AND 
          nat  <                   34 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF  NOT MISSING(nat ) AND 
                            34 <= nat  THEN DO;
           _BRANCH_ =    2; 
          END; 
        IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
            IF                 2474 <= scho  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF scho  <                 2474 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
            IF town  <                    5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF                    5 <= town  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

        IF _BRANCH_ EQ    1 THEN DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(study ) AND 
            study  <                    4 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(study ) AND 
                               4 <= study  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
              IF                 15.5 <= nat  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF nat  <                 15.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF                 33.5 <= scho  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF scho  <                 33.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

          IF _BRANCH_ EQ    2 THEN DO;
            _NODE_  =                   65;
            _LEAF_  =                    2;
            P_final  =     5.21428571428571;
            V_final  =     5.33333333333333;
            END;
          ELSE DO;
            _NODE_  =                   64;
            _LEAF_  =                    1;
            P_final  =     5.87072243346007;
            V_final  =     5.89256198347107;
            END;
          END;
        ELSE DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(study ) AND 
            study  <                  2.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(study ) AND 
                             2.5 <= study  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
              IF town  <                    7 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                    7 <= town  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

          IF _BRANCH_ EQ    1 THEN DO;
            _NODE_  =                   66;
            _LEAF_  =                    3;
            P_final  =     4.32432432432432;
            V_final  =                    4;
            END;
          ELSE DO;
            _NODE_  =                   67;
            _LEAF_  =                    4;
            P_final  =     5.33031674208144;
            V_final  =     5.24183006535947;
            END;
          END;
        END;
      END;
    ELSE DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(sec ) AND 
        sec  <               66.375 THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF  NOT MISSING(sec ) AND 
                      66.375 <= sec  THEN DO;
         _BRANCH_ =    2; 
        END; 
      IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
          IF study  <                  2.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF                  2.5 <= study  THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    2; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
          IF                 45.5 <= town  THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF town  <                 45.5 THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    1; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
          IF scho  <                  1.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF                  1.5 <= scho  THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    2; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
          IF nat  <                  5.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF                  5.5 <= nat  THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    2; 
        END;
      IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

      IF _BRANCH_ EQ    1 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(sec ) AND 
          sec  <                63.05 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF  NOT MISSING(sec ) AND 
                         63.05 <= sec  THEN DO;
           _BRANCH_ =    2; 
          END; 
        IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
            IF                 2498 <= scho  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF scho  <                 2498 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
            IF                 45.5 <= town  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF town  <                 45.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
            IF study  <                  1.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF                  1.5 <= study  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

        IF _BRANCH_ EQ    1 THEN DO;
          IF  NOT MISSING(sec ) AND 
            sec  <               56.925 THEN DO;
            IF  NOT MISSING(sec ) AND 
              sec  <                 20.5 THEN DO;
              _NODE_  =                  134;
              _LEAF_  =                   12;
              P_final  =                    1;
              V_final  =                    1;
              END;
            ELSE DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(sect ) AND 
                sect  <                  8.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(sect ) AND 
                                 8.5 <= sect  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
                  IF study  <                  3.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                  3.5 <= study  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

              IF _BRANCH_ EQ    2 THEN DO;
                _NODE_  =                  215;
                _LEAF_  =                   14;
                P_final  =     3.13888888888888;
                V_final  =     3.15384615384615;
                END;
              ELSE DO;
                _NODE_  =                  214;
                _LEAF_  =                   13;
                P_final  =     2.66826923076923;
                V_final  =     2.75362318840579;
                END;
              END;
            END;
          ELSE DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(study ) AND 
              study  <                  3.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(study ) AND 
                               3.5 <= study  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                IF               56.935 <= sec  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF sec  <               56.935 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

            IF _BRANCH_ EQ    2 THEN DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(town ) AND 
                town  <                 23.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(town ) AND 
                                23.5 <= town  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                  IF scho  <                178.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                178.5 <= scho  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                  IF nat  <                 48.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                 48.5 <= nat  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                  IF sec  <                56.95 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                56.95 <= sec  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

              IF _BRANCH_ EQ    1 THEN DO;

                _BRANCH_ = -1;
                  IF  NOT MISSING(town ) AND 
                  town  <                 20.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF  NOT MISSING(town ) AND 
                                  20.5 <= town  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                    IF                174.5 <= scho  THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF scho  <                174.5 THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    1; 
                  END;
                IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                    IF sec  <               59.935 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF               59.935 <= sec  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    2; 
                  END;
                IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
                    IF study  <                  4.5 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF                  4.5 <= study  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    2; 
                  END;
                IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

                IF _BRANCH_ EQ    1 THEN DO;
                  _NODE_  =                  286;
                  _LEAF_  =                   20;
                  P_final  =                3.375;
                  V_final  =     3.23076923076923;
                  END;
                ELSE DO;
                  _NODE_  =                  287;
                  _LEAF_  =                   21;
                  P_final  =                    3;
                  V_final  =                 3.05;
                  END;
                END;
              ELSE DO;

                _BRANCH_ = -1;
                  IF  NOT MISSING(town ) AND 
                  town  <                 27.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF  NOT MISSING(town ) AND 
                                  27.5 <= town  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                    IF sec  <               56.985 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF               56.985 <= sec  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    2; 
                  END;
                IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

                IF _BRANCH_ EQ    1 THEN DO;
                  _NODE_  =                  288;
                  _LEAF_  =                   22;
                  P_final  =     3.92857142857142;
                  V_final  =                    4;
                  END;
                ELSE DO;
                  _NODE_  =                  289;
                  _LEAF_  =                   23;
                  P_final  =     3.37681159420289;
                  V_final  =     3.26612903225806;
                  END;
                END;
              END;
            ELSE DO;
              IF  NOT MISSING(sec ) AND 
                sec  <               59.185 THEN DO;

                _BRANCH_ = -1;
                  IF  NOT MISSING(study ) AND 
                  study  <                  2.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF  NOT MISSING(study ) AND 
                                   2.5 <= study  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                    IF town  <                    2 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF                    2 <= town  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    2; 
                  END;
                IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

                IF _BRANCH_ EQ    1 THEN DO;
                  _NODE_  =                  282;
                  _LEAF_  =                   15;
                  P_final  =     2.81111111111111;
                  V_final  =                  2.8;
                  END;
                ELSE DO;
                  _NODE_  =                  283;
                  _LEAF_  =                   16;
                  P_final  =                    3;
                  V_final  =     2.98265895953757;
                  END;
                END;
              ELSE DO;
                IF  NOT MISSING(study ) AND 
                  study  <                  2.5 THEN DO;
                  _NODE_  =                  284;
                  _LEAF_  =                   17;
                  P_final  =     3.05249343832021;
                  V_final  =     2.97599999999999;
                  END;
                ELSE DO;

                  _BRANCH_ = -1;
                    IF  NOT MISSING(sec ) AND 
                    sec  <                61.13 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF  NOT MISSING(sec ) AND 
                                   61.13 <= sec  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                  IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                      IF town  <                  5.5 THEN DO;
                       _BRANCH_ =    1; 
                      END; 
                      ELSE IF                  5.5 <= town  THEN DO;
                       _BRANCH_ =    2; 
                      END; 
                     ELSE _BRANCH_ =    2; 
                    END;
                  IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

                  IF _BRANCH_ EQ    1 THEN DO;
                    _NODE_  =                  310;
                    _LEAF_  =                   18;
                    P_final  =     3.13260219341974;
                    V_final  =     3.09815950920245;
                    END;
                  ELSE DO;
                    _NODE_  =                  311;
                    _LEAF_  =                   19;
                    P_final  =     3.21771467207572;
                    V_final  =     3.21505376344086;
                    END;
                  END;
                END;
              END;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(study ) AND 
            study  <                  2.5 THEN DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(sec ) AND 
              sec  <                65.17 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(sec ) AND 
                             65.17 <= sec  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                IF                  5.5 <= town  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF town  <                  5.5 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                IF scho  <               2166.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF               2166.5 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
                IF                    6 <= sect  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF sect  <                    6 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
                IF                  1.5 <= study  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF study  <                  1.5 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

            IF _BRANCH_ EQ    2 THEN DO;
              _NODE_  =                  139;
              _LEAF_  =                   25;
              P_final  =     3.28504672897196;
              V_final  =     3.27631578947368;
              END;
            ELSE DO;
              _NODE_  =                  138;
              _LEAF_  =                   24;
              P_final  =     3.13924050632911;
              V_final  =     3.16304347826087;
              END;
            END;
          ELSE DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(sec ) AND 
              sec  <               64.955 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(sec ) AND 
                            64.955 <= sec  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
                IF sect  <                  8.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                  8.5 <= sect  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                IF                  7.5 <= town  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF town  <                  7.5 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                IF nat  <                 63.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                 63.5 <= nat  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                IF scho  <                 2388 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                 2388 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

            IF _BRANCH_ EQ    2 THEN DO;
              _NODE_  =                  141;
              _LEAF_  =                   27;
              P_final  =     3.49884419787332;
              V_final  =     3.46054519368723;
              END;
            ELSE DO;
              _NODE_  =                  140;
              _LEAF_  =                   26;
              P_final  =     3.35983086680761;
              V_final  =     3.34469696969697;
              END;
            END;
          END;
        END;
      ELSE DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(sec ) AND 
          sec  <               68.245 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF  NOT MISSING(sec ) AND 
                        68.245 <= sec  THEN DO;
           _BRANCH_ =    2; 
          END; 
        IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
            IF scho  <                  7.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF                  7.5 <= scho  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

        IF _BRANCH_ EQ    1 THEN DO;
          IF  NOT MISSING(study ) AND 
            study  <                  2.5 THEN DO;
            _NODE_  =                   76;
            _LEAF_  =                   28;
            P_final  =     3.39877300613497;
            V_final  =     3.40963855421686;
            END;
          ELSE DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(town ) AND 
              town  <                 40.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(town ) AND 
                              40.5 <= town  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                IF nat  <                   69 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                   69 <= nat  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                IF scho  <                 2490 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                 2490 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
                IF                  7.5 <= sect  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF sect  <                  7.5 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

            IF _BRANCH_ EQ    2 THEN DO;
              _NODE_  =                  143;
              _LEAF_  =                   31;
              P_final  =     3.62523900573613;
              V_final  =     3.59803921568627;
              END;
            ELSE DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(town ) AND 
                town  <                 34.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(town ) AND 
                                34.5 <= town  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                  IF                  312 <= scho  THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF scho  <                  312 THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    1; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                  IF nat  <                   62 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                   62 <= nat  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                  IF               66.415 <= sec  THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF sec  <               66.415 THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    1; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

              IF _BRANCH_ EQ    2 THEN DO;
                _NODE_  =                  223;
                _LEAF_  =                   30;
                P_final  =     3.83860414394765;
                V_final  =     3.80573248407643;
                END;
              ELSE DO;
                _NODE_  =                  222;
                _LEAF_  =                   29;
                P_final  =      3.6721044045677;
                V_final  =     3.65681818181818;
                END;
              END;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(study ) AND 
            study  <                  2.5 THEN DO;
            _NODE_  =                   78;
            _LEAF_  =                   32;
            P_final  =     3.66454689984101;
            V_final  =     3.69090909090909;
            END;
          ELSE DO;
            IF  NOT MISSING(sec ) AND 
              sec  <                69.27 THEN DO;
              _NODE_  =                  144;
              _LEAF_  =                   33;
              P_final  =     3.86372950819672;
              V_final  =     3.85163204747774;
              END;
            ELSE DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(study ) AND 
                study  <                  4.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(study ) AND 
                                 4.5 <= study  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
                  IF sect  <                  8.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                  8.5 <= sect  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                  IF sec  <               71.295 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF               71.295 <= sec  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

              IF _BRANCH_ EQ    2 THEN DO;
                _NODE_  =                  229;
                _LEAF_  =                   36;
                P_final  =     3.87201125175808;
                V_final  =     3.87654320987654;
                END;
              ELSE DO;
                IF  NOT MISSING(scho ) AND 
                                  2071 <= scho  THEN DO;
                  _NODE_  =                  293;
                  _LEAF_  =                   35;
                  P_final  =     3.93070866141732;
                  V_final  =      3.9326923076923;
                  END;
                ELSE DO;
                  _NODE_  =                  292;
                  _LEAF_  =                   34;
                  P_final  =     4.01347354584291;
                  V_final  =     4.01474926253687;
                  END;
                END;
              END;
            END;
          END;
        END;
      END;
    END;
  ELSE DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sec ) AND 
      sec  <               76.965 THEN DO;
       _BRANCH_ =    1; 
      END; 
      ELSE IF  NOT MISSING(sec ) AND 
                    76.965 <= sec  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
        IF                  4.5 <= scho  THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF scho  <                  4.5 THEN DO;
         _BRANCH_ =    2; 
        END; 
       ELSE _BRANCH_ =    1; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
        IF                  4.5 <= sect  THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF sect  <                  4.5 THEN DO;
         _BRANCH_ =    2; 
        END; 
       ELSE _BRANCH_ =    1; 
      END;
    IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

    IF _BRANCH_ EQ    2 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(study ) AND 
        study  <                  4.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF  NOT MISSING(study ) AND 
                         4.5 <= study  THEN DO;
         _BRANCH_ =    2; 
        END; 
      IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
          IF sec  <               80.295 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF               80.295 <= sec  THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    2; 
        END;
      IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

      IF _BRANCH_ EQ    2 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(sec ) AND 
          sec  <               78.735 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF  NOT MISSING(sec ) AND 
                        78.735 <= sec  THEN DO;
           _BRANCH_ =    2; 
          END; 
        IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
            IF town  <                 34.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF                 34.5 <= town  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
            IF sect  <                  8.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF                  8.5 <= sect  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
            IF                989.5 <= scho  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF scho  <                989.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
            IF                 60.5 <= nat  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF nat  <                 60.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

        IF _BRANCH_ EQ    2 THEN DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(town ) AND 
            town  <                 38.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(town ) AND 
                            38.5 <= town  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
              IF               78.765 <= sec  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF sec  <               78.765 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF scho  <               2442.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF               2442.5 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

          IF _BRANCH_ EQ    2 THEN DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(town ) AND 
              town  <                 41.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(town ) AND 
                              41.5 <= town  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                IF scho  <                390.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                390.5 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

            IF _BRANCH_ EQ    1 THEN DO;
              _NODE_  =                  162;
              _LEAF_  =                   68;
              P_final  =     4.91379310344827;
              V_final  =               4.8125;
              END;
            ELSE DO;
              _NODE_  =                  163;
              _LEAF_  =                   69;
              P_final  =               4.5875;
              V_final  =     4.63541666666666;
              END;
            END;
          ELSE DO;
            _NODE_  =                   94;
            _LEAF_  =                   67;
            P_final  =     4.46996466431095;
            V_final  =     4.40104166666666;
            END;
          END;
        ELSE DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(sec ) AND 
            sec  <                77.92 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(sec ) AND 
                           77.92 <= sec  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF scho  <                 2121 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                 2121 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
              IF                  6.5 <= town  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF town  <                  6.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
              IF nat  <                 60.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                 60.5 <= nat  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

          IF _BRANCH_ EQ    2 THEN DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(town ) AND 
              town  <                 38.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(town ) AND 
                              38.5 <= town  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                IF nat  <                 60.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                 60.5 <= nat  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                IF               77.935 <= sec  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF sec  <               77.935 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
                IF                  7.5 <= sect  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF sect  <                  7.5 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

            IF _BRANCH_ EQ    2 THEN DO;
              _NODE_  =                  159;
              _LEAF_  =                   66;
              P_final  =     4.53676470588235;
              V_final  =     4.53488372093023;
              END;
            ELSE DO;
              _NODE_  =                  158;
              _LEAF_  =                   65;
              P_final  =      4.3320895522388;
              V_final  =      4.4025974025974;
              END;
            END;
          ELSE DO;
            _NODE_  =                   92;
            _LEAF_  =                   64;
            P_final  =     4.25917926565874;
            V_final  =     4.32666666666666;
            END;
          END;
        END;
      ELSE DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(sec ) AND 
          sec  <                 78.6 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF  NOT MISSING(sec ) AND 
                          78.6 <= sec  THEN DO;
           _BRANCH_ =    2; 
          END; 
        IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
            IF                 2272 <= scho  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF scho  <                 2272 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
            IF                 76.5 <= nat  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF nat  <                 76.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
            IF study  <                  2.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF                  2.5 <= study  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
            IF                 45.5 <= town  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF town  <                 45.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

        IF _BRANCH_ EQ    1 THEN DO;
          IF  NOT MISSING(study ) AND 
            study  <                  2.5 THEN DO;
            _NODE_  =                   88;
            _LEAF_  =                   58;
            P_final  =     4.19724770642201;
            V_final  =     4.29333333333333;
            END;
          ELSE DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(sec ) AND 
              sec  <                77.95 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(sec ) AND 
                             77.95 <= sec  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                IF scho  <               2505.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF               2505.5 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                IF                  3.5 <= nat  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF nat  <                  3.5 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

            IF _BRANCH_ EQ    2 THEN DO;
              _NODE_  =                  155;
              _LEAF_  =                   60;
              P_final  =     4.66429954809554;
              V_final  =                4.694;
              END;
            ELSE DO;
              _NODE_  =                  154;
              _LEAF_  =                   59;
              P_final  =     4.58224101479915;
              V_final  =     4.55762081784386;
              END;
            END;
          END;
        ELSE DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(study ) AND 
            study  <                  2.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(study ) AND 
                             2.5 <= study  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
              IF               80.295 <= sec  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF sec  <               80.295 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

          IF _BRANCH_ EQ    1 THEN DO;
            _NODE_  =                   90;
            _LEAF_  =                   61;
            P_final  =     4.48095238095238;
            V_final  =     4.47142857142857;
            END;
          ELSE DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(sec ) AND 
              sec  <               79.015 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(sec ) AND 
                            79.015 <= sec  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                IF                 2503 <= scho  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF scho  <                 2503 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

            IF _BRANCH_ EQ    1 THEN DO;
              _NODE_  =                  156;
              _LEAF_  =                   62;
              P_final  =     4.71609756097561;
              V_final  =     4.74074074074074;
              END;
            ELSE DO;
              _NODE_  =                  157;
              _LEAF_  =                   63;
              P_final  =     4.79707843759923;
              V_final  =       4.791280148423;
              END;
            END;
          END;
        END;
      END;
    ELSE DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(sec ) AND 
        sec  <                74.49 THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF  NOT MISSING(sec ) AND 
                       74.49 <= sec  THEN DO;
         _BRANCH_ =    2; 
        END; 
      IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
          IF                  3.5 <= town  THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF town  <                  3.5 THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    1; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
          IF                 61.5 <= scho  THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF scho  <                 61.5 THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    1; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
          IF                    3 <= sect  THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF sect  <                    3 THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    1; 
        END;
      IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

      IF _BRANCH_ EQ    2 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(study ) AND 
          study  <                  4.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF  NOT MISSING(study ) AND 
                           4.5 <= study  THEN DO;
           _BRANCH_ =    2; 
          END; 
        IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
            IF sec  <                76.95 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF                76.95 <= sec  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

        IF _BRANCH_ EQ    2 THEN DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(town ) AND 
            town  <                 35.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(town ) AND 
                            35.5 <= town  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF               1138.5 <= scho  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF scho  <               1138.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
              IF               74.575 <= sec  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF sec  <               74.575 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
              IF nat  <                 60.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                 60.5 <= nat  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
              IF                  7.5 <= sect  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF sect  <                  7.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

          IF _BRANCH_ EQ    2 THEN DO;
            IF  NOT MISSING(town ) AND 
              town  <                 36.5 THEN DO;
              _NODE_  =                  152;
              _LEAF_  =                   56;
              P_final  =     4.62962962962963;
              V_final  =                4.625;
              END;
            ELSE DO;
              _NODE_  =                  153;
              _LEAF_  =                   57;
              P_final  =     4.20303605313093;
              V_final  =     4.18620689655172;
              END;
            END;
          ELSE DO;
            _NODE_  =                   86;
            _LEAF_  =                   55;
            P_final  =     4.13700787401574;
            V_final  =     4.10952380952381;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(study ) AND 
            study  <                  2.5 THEN DO;
            _NODE_  =                   84;
            _LEAF_  =                   48;
            P_final  =     4.08895705521472;
            V_final  =     4.06201550387596;
            END;
          ELSE DO;
            IF  NOT MISSING(sec ) AND 
              sec  <               75.415 THEN DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(sect ) AND 
                sect  <                  8.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(sect ) AND 
                                 8.5 <= sect  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
                  IF study  <                  3.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                  3.5 <= study  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                  IF sec  <                 75.4 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                 75.4 <= sec  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

              IF _BRANCH_ EQ    2 THEN DO;
                IF  NOT MISSING(study ) AND 
                                   3.5 <= study  THEN DO;
                  _NODE_  =                  299;
                  _LEAF_  =                   51;
                  P_final  =                  4.5;
                  V_final  =     4.66666666666666;
                  END;
                ELSE DO;
                  _NODE_  =                  298;
                  _LEAF_  =                   50;
                  P_final  =     4.18587360594795;
                  V_final  =     4.29591836734693;
                  END;
                END;
              ELSE DO;
                _NODE_  =                  236;
                _LEAF_  =                   49;
                P_final  =     4.31638418079096;
                V_final  =     4.34404536862003;
                END;
              END;
            ELSE DO;
              IF  NOT MISSING(scho ) AND 
                scho  <                 66.5 THEN DO;

                _BRANCH_ = -1;
                  IF  NOT MISSING(sect ) AND 
                  sect  <                  8.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF  NOT MISSING(sect ) AND 
                                   8.5 <= sect  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                    IF sec  <                76.93 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF                76.93 <= sec  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    2; 
                  END;
                IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

                IF _BRANCH_ EQ    2 THEN DO;
                  _NODE_  =                  301;
                  _LEAF_  =                   53;
                  P_final  =                    4;
                  V_final  =                 4.25;
                  END;
                ELSE DO;
                  _NODE_  =                  300;
                  _LEAF_  =                   52;
                  P_final  =     4.72043010752688;
                  V_final  =     4.61904761904761;
                  END;
                END;
              ELSE DO;
                _NODE_  =                  239;
                _LEAF_  =                   54;
                P_final  =      4.4192037470726;
                V_final  =     4.42759211653813;
                END;
              END;
            END;
          END;
        END;
      ELSE DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(study ) AND 
          study  <                  2.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF  NOT MISSING(study ) AND 
                           2.5 <= study  THEN DO;
           _BRANCH_ =    2; 
          END; 
        IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
            IF scho  <                  1.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF                  1.5 <= scho  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

        IF _BRANCH_ EQ    1 THEN DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(sec ) AND 
            sec  <               73.045 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(sec ) AND 
                          73.045 <= sec  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
              IF                  1.5 <= town  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF town  <                  1.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF scho  <               2494.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF               2494.5 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

          IF _BRANCH_ EQ    2 THEN DO;
            _NODE_  =                   81;
            _LEAF_  =                   38;
            P_final  =     3.97196261682243;
            V_final  =     4.04054054054054;
            END;
          ELSE DO;
            _NODE_  =                   80;
            _LEAF_  =                   37;
            P_final  =      3.8370607028754;
            V_final  =     3.86597938144329;
            END;
          END;
        ELSE DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(study ) AND 
            study  <                  4.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(study ) AND 
                             4.5 <= study  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
              IF sect  <                  8.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                  8.5 <= sect  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
              IF sec  <               74.475 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF               74.475 <= sec  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

          IF _BRANCH_ EQ    2 THEN DO;
            _NODE_  =                   83;
            _LEAF_  =                   47;
            P_final  =     4.01463414634146;
            V_final  =     4.03064066852367;
            END;
          ELSE DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(sec ) AND 
              sec  <               72.515 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(sec ) AND 
                            72.515 <= sec  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                IF scho  <                  1.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                  1.5 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
                IF sect  <                    3 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                    3 <= sect  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

            IF _BRANCH_ EQ    1 THEN DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(town ) AND 
                town  <                 33.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(town ) AND 
                                33.5 <= town  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                  IF               2156.5 <= scho  THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF scho  <               2156.5 THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    1; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                  IF nat  <                 49.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                 49.5 <= nat  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
                  IF sect  <                  6.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                  6.5 <= sect  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                  IF               72.505 <= sec  THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF sec  <               72.505 THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    1; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

              IF _BRANCH_ EQ    1 THEN DO;
                _NODE_  =                  230;
                _LEAF_  =                   39;
                P_final  =      4.0566037735849;
                V_final  =     4.07861635220125;
                END;
              ELSE DO;

                _BRANCH_ = -1;
                  IF  NOT MISSING(town ) AND 
                  town  <                 35.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF  NOT MISSING(town ) AND 
                                  35.5 <= town  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                    IF scho  <                 68.5 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF                 68.5 <= scho  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    2; 
                  END;
                IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

                IF _BRANCH_ EQ    1 THEN DO;
                  _NODE_  =                  294;
                  _LEAF_  =                   40;
                  P_final  =     4.24561403508772;
                  V_final  =     4.22105263157894;
                  END;
                ELSE DO;
                  _NODE_  =                  295;
                  _LEAF_  =                   41;
                  P_final  =     4.09226713532513;
                  V_final  =     4.12398921832884;
                  END;
                END;
              END;
            ELSE DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(sect ) AND 
                sect  <                  8.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(sect ) AND 
                                 8.5 <= sect  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
                  IF study  <                  3.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                  3.5 <= study  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                  IF               72.525 <= sec  THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF sec  <               72.525 THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    1; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                  IF scho  <               2507.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF               2507.5 <= scho  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

              IF _BRANCH_ EQ    2 THEN DO;
                _NODE_  =                  233;
                _LEAF_  =                   46;
                P_final  =     4.12807881773399;
                V_final  =     4.10747663551401;
                END;
              ELSE DO;

                _BRANCH_ = -1;
                  IF  NOT MISSING(town ) AND 
                  town  <                 31.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF  NOT MISSING(town ) AND 
                                  31.5 <= town  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                    IF                 2145 <= scho  THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF scho  <                 2145 THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    1; 
                  END;
                IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                    IF nat  <                   11 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF                   11 <= nat  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    2; 
                  END;
                IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
                    IF sect  <                  5.5 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF                  5.5 <= sect  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    2; 
                  END;
                IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

                IF _BRANCH_ EQ    1 THEN DO;

                  _BRANCH_ = -1;
                    IF  NOT MISSING(scho ) AND 
                    scho  <               1357.5 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF  NOT MISSING(scho ) AND 
                                  1357.5 <= scho  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                  IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                      IF town  <                 30.5 THEN DO;
                       _BRANCH_ =    1; 
                      END; 
                      ELSE IF                 30.5 <= town  THEN DO;
                       _BRANCH_ =    2; 
                      END; 
                     ELSE _BRANCH_ =    2; 
                    END;
                  IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                      IF                 71.5 <= nat  THEN DO;
                       _BRANCH_ =    1; 
                      END; 
                      ELSE IF nat  <                 71.5 THEN DO;
                       _BRANCH_ =    2; 
                      END; 
                     ELSE _BRANCH_ =    1; 
                    END;
                  IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                      IF sec  <               72.595 THEN DO;
                       _BRANCH_ =    1; 
                      END; 
                      ELSE IF               72.595 <= sec  THEN DO;
                       _BRANCH_ =    2; 
                      END; 
                     ELSE _BRANCH_ =    2; 
                    END;
                  IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

                  IF _BRANCH_ EQ    1 THEN DO;
                    _NODE_  =                  312;
                    _LEAF_  =                   42;
                    P_final  =     4.23593466424682;
                    V_final  =      4.2680412371134;
                    END;
                  ELSE DO;
                    _NODE_  =                  313;
                    _LEAF_  =                   43;
                    P_final  =     4.10458452722063;
                    V_final  =     4.12322274881516;
                    END;
                  END;
                ELSE DO;

                  _BRANCH_ = -1;
                    IF  NOT MISSING(town ) AND 
                    town  <                 35.5 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF  NOT MISSING(town ) AND 
                                    35.5 <= town  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                  IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                      IF scho  <                 68.5 THEN DO;
                       _BRANCH_ =    1; 
                      END; 
                      ELSE IF                 68.5 <= scho  THEN DO;
                       _BRANCH_ =    2; 
                      END; 
                     ELSE _BRANCH_ =    2; 
                    END;
                  IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

                  IF _BRANCH_ EQ    1 THEN DO;
                    _NODE_  =                  314;
                    _LEAF_  =                   44;
                    P_final  =     4.32296296296296;
                    V_final  =     4.37614678899082;
                    END;
                  ELSE DO;
                    _NODE_  =                  315;
                    _LEAF_  =                   45;
                    P_final  =     4.20903614457831;
                    V_final  =     4.18913857677902;
                    END;
                  END;
                END;
              END;
            END;
          END;
        END;
      END;
    END;
  END;
ELSE DO;

  _BRANCH_ = -1;
    IF  NOT MISSING(sec ) AND 
    sec  <               88.405 THEN DO;
     _BRANCH_ =    1; 
    END; 
    ELSE IF  NOT MISSING(sec ) AND 
                  88.405 <= sec  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
      IF                  8.5 <= sect  THEN DO;
       _BRANCH_ =    1; 
      END; 
      ELSE IF sect  <                  8.5 THEN DO;
       _BRANCH_ =    2; 
      END; 
     ELSE _BRANCH_ =    1; 
    END;
  IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
      IF                  3.5 <= study  THEN DO;
       _BRANCH_ =    1; 
      END; 
      ELSE IF study  <                  3.5 THEN DO;
       _BRANCH_ =    2; 
      END; 
     ELSE _BRANCH_ =    1; 
    END;
  IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
      IF town  <                 31.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
      ELSE IF                 31.5 <= town  THEN DO;
       _BRANCH_ =    2; 
      END; 
     ELSE _BRANCH_ =    2; 
    END;
  IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
      IF               2430.5 <= scho  THEN DO;
       _BRANCH_ =    1; 
      END; 
      ELSE IF scho  <               2430.5 THEN DO;
       _BRANCH_ =    2; 
      END; 
     ELSE _BRANCH_ =    1; 
    END;
  IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

  IF _BRANCH_ EQ    1 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sec ) AND 
      sec  <               85.705 THEN DO;
       _BRANCH_ =    1; 
      END; 
      ELSE IF  NOT MISSING(sec ) AND 
                    85.705 <= sec  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
        IF scho  <               2500.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF               2500.5 <= scho  THEN DO;
         _BRANCH_ =    2; 
        END; 
       ELSE _BRANCH_ =    2; 
      END;
    IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

    IF _BRANCH_ EQ    2 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(study ) AND 
        study  <                  3.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF  NOT MISSING(study ) AND 
                         3.5 <= study  THEN DO;
         _BRANCH_ =    2; 
        END; 
      IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
          IF sect  <                  8.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF                  8.5 <= sect  THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    2; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
          IF sec  <               88.395 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF               88.395 <= sec  THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    2; 
        END;
      IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

      IF _BRANCH_ EQ    2 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(town ) AND 
          town  <                 35.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF  NOT MISSING(town ) AND 
                          35.5 <= town  THEN DO;
           _BRANCH_ =    2; 
          END; 
        IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
            IF                  4.5 <= study  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF study  <                  4.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
            IF scho  <               2469.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF               2469.5 <= scho  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
            IF                   18 <= nat  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF nat  <                   18 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

        IF _BRANCH_ EQ    2 THEN DO;
          _NODE_  =                   55;
          _LEAF_  =                  108;
          P_final  =     5.08255659121171;
          V_final  =     5.09219858156028;
          END;
        ELSE DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(sec ) AND 
            sec  <                87.24 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(sec ) AND 
                           87.24 <= sec  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
              IF                  7.5 <= town  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF town  <                  7.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
              IF                 41.5 <= nat  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF nat  <                 41.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF scho  <               2453.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF               2453.5 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

          IF _BRANCH_ EQ    2 THEN DO;
            _NODE_  =                  109;
            _LEAF_  =                  107;
            P_final  =     5.03532008830022;
            V_final  =      5.0060606060606;
            END;
          ELSE DO;
            IF  NOT MISSING(scho ) AND 
                            2438.5 <= scho  THEN DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(scho ) AND 
                scho  <               2439.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(scho ) AND 
                              2439.5 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                  IF town  <                   32 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                   32 <= town  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                  IF                86.89 <= sec  THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF sec  <                86.89 THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    1; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

              IF _BRANCH_ EQ    1 THEN DO;
                _NODE_  =                  262;
                _LEAF_  =                  105;
                P_final  =     4.22222222222222;
                V_final  =                    .;
                END;
              ELSE DO;
                _NODE_  =                  263;
                _LEAF_  =                  106;
                P_final  =                    5;
                V_final  =                    5;
                END;
              END;
            ELSE DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(sect ) AND 
                sect  <                  8.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(sect ) AND 
                                 8.5 <= sect  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                  IF scho  <                183.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                183.5 <= scho  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                  IF nat  <                 52.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                 52.5 <= nat  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

              IF _BRANCH_ EQ    1 THEN DO;
                _NODE_  =                  260;
                _LEAF_  =                  103;
                P_final  =     4.86792452830188;
                V_final  =      4.7906976744186;
                END;
              ELSE DO;
                _NODE_  =                  261;
                _LEAF_  =                  104;
                P_final  =     4.96963123644251;
                V_final  =     5.01369863013698;
                END;
              END;
            END;
          END;
        END;
      ELSE DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(sec ) AND 
          sec  <                87.49 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF  NOT MISSING(sec ) AND 
                         87.49 <= sec  THEN DO;
           _BRANCH_ =    2; 
          END; 
        IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
            IF town  <                 45.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF                 45.5 <= town  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

        IF _BRANCH_ EQ    2 THEN DO;
          IF  NOT MISSING(study ) AND 
            study  <                  2.5 THEN DO;
            _NODE_  =                  106;
            _LEAF_  =                  100;
            P_final  =     4.91428571428571;
            V_final  =                    5;
            END;
          ELSE DO;
            IF  NOT MISSING(sec ) AND 
                            88.115 <= sec  THEN DO;
              _NODE_  =                  181;
              _LEAF_  =                  102;
              P_final  =     5.50518518518518;
              V_final  =     5.49771689497717;
              END;
            ELSE DO;
              _NODE_  =                  180;
              _LEAF_  =                  101;
              P_final  =     5.40735958683021;
              V_final  =     5.42376237623762;
              END;
            END;
          END;
        ELSE DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(study ) AND 
            study  <                  2.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(study ) AND 
                             2.5 <= study  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
              IF               87.475 <= sec  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF sec  <               87.475 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

          IF _BRANCH_ EQ    1 THEN DO;
            _NODE_  =                  104;
            _LEAF_  =                   95;
            P_final  =     4.79310344827586;
            V_final  =                 4.72;
            END;
          ELSE DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(sec ) AND 
              sec  <                86.66 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(sec ) AND 
                             86.66 <= sec  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                IF                  5.5 <= town  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF town  <                  5.5 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

            IF _BRANCH_ EQ    2 THEN DO;
              IF  NOT MISSING(sect ) AND 
                                 8.5 <= sect  THEN DO;
                _NODE_  =                  259;
                _LEAF_  =                   99;
                P_final  =     5.17766497461929;
                V_final  =     5.15714285714285;
                END;
              ELSE DO;
                _NODE_  =                  258;
                _LEAF_  =                   98;
                P_final  =     5.33181818181818;
                V_final  =     5.28888888888888;
                END;
              END;
            ELSE DO;
              IF  NOT MISSING(scho ) AND 
                scho  <                214.5 THEN DO;
                _NODE_  =                  256;
                _LEAF_  =                   96;
                P_final  =     5.34567901234567;
                V_final  =     5.37662337662337;
                END;
              ELSE DO;
                _NODE_  =                  257;
                _LEAF_  =                   97;
                P_final  =     5.19560238204306;
                V_final  =     5.18351063829787;
                END;
              END;
            END;
          END;
        END;
      END;
    ELSE DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(study ) AND 
        study  <                  4.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF  NOT MISSING(study ) AND 
                         4.5 <= study  THEN DO;
         _BRANCH_ =    2; 
        END; 
      IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
          IF sect  <                  8.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF                  8.5 <= sect  THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    2; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
          IF sec  <               85.695 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF               85.695 <= sec  THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    2; 
        END;
      IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

      IF _BRANCH_ EQ    2 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(sec ) AND 
          sec  <               82.545 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF  NOT MISSING(sec ) AND 
                        82.545 <= sec  THEN DO;
           _BRANCH_ =    2; 
          END; 
        IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
            IF nat  <                 48.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF                 48.5 <= nat  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
            IF               2475.5 <= scho  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF scho  <               2475.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

        IF _BRANCH_ EQ    1 THEN DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(town ) AND 
            town  <                 35.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(town ) AND 
                            35.5 <= town  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF scho  <               2469.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF               2469.5 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
              IF nat  <                 62.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                 62.5 <= nat  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
              IF               80.325 <= sec  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF sec  <               80.325 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

          IF _BRANCH_ EQ    2 THEN DO;
            _NODE_  =                  101;
            _LEAF_  =                   87;
            P_final  =     4.78776978417266;
            V_final  =     4.82110091743119;
            END;
          ELSE DO;
            IF  NOT MISSING(town ) AND 
              town  <                  5.5 THEN DO;
              _NODE_  =                  172;
              _LEAF_  =                   85;
              P_final  =     4.95454545454545;
              V_final  =                    5;
              END;
            ELSE DO;
              _NODE_  =                  173;
              _LEAF_  =                   86;
              P_final  =     4.62953020134228;
              V_final  =     4.58333333333333;
              END;
            END;
          END;
        ELSE DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(town ) AND 
            town  <                 35.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(town ) AND 
                            35.5 <= town  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF scho  <                  734 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                  734 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
              IF               82.575 <= sec  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF sec  <               82.575 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
              IF nat  <                 75.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                 75.5 <= nat  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
              IF                  7.5 <= sect  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF sect  <                  7.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

          IF _BRANCH_ EQ    2 THEN DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(scho ) AND 
              scho  <                 1856 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(scho ) AND 
                              1856 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                IF                 36.5 <= town  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF town  <                 36.5 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                IF                 40.5 <= nat  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF nat  <                 40.5 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
                IF                  7.5 <= sect  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF sect  <                  7.5 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

            IF _BRANCH_ EQ    2 THEN DO;
              IF  NOT MISSING(sec ) AND 
                              85.545 <= sec  THEN DO;
                _NODE_  =                  255;
                _LEAF_  =                   94;
                P_final  =                  5.2;
                V_final  =                  5.2;
                END;
              ELSE DO;
                _NODE_  =                  254;
                _LEAF_  =                   93;
                P_final  =                    5;
                V_final  =     4.98924731182795;
                END;
              END;
            ELSE DO;
              _NODE_  =                  176;
              _LEAF_  =                   92;
              P_final  =     4.94970414201183;
              V_final  =     4.95930232558139;
              END;
            END;
          ELSE DO;
            IF  NOT MISSING(scho ) AND 
                            2438.5 <= scho  THEN DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(scho ) AND 
                scho  <                 2449 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(scho ) AND 
                                2449 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                  IF town  <                   32 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                   32 <= town  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                  IF sec  <                83.39 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                83.39 <= sec  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

              IF _BRANCH_ EQ    1 THEN DO;
                _NODE_  =                  252;
                _LEAF_  =                   90;
                P_final  =                    4;
                V_final  =     4.33333333333333;
                END;
              ELSE DO;
                _NODE_  =                  253;
                _LEAF_  =                   91;
                P_final  =                    5;
                V_final  =                    5;
                END;
              END;
            ELSE DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(sec ) AND 
                sec  <               84.095 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(sec ) AND 
                              84.095 <= sec  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                  IF                 1584 <= scho  THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF scho  <                 1584 THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    1; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                  IF town  <                 31.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                 31.5 <= town  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
                  IF                  8.5 <= sect  THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF sect  <                  8.5 THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    1; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                  IF nat  <                 60.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                 60.5 <= nat  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

              IF _BRANCH_ EQ    2 THEN DO;
                _NODE_  =                  251;
                _LEAF_  =                   89;
                P_final  =     4.88501742160278;
                V_final  =     4.88333333333333;
                END;
              ELSE DO;
                _NODE_  =                  250;
                _LEAF_  =                   88;
                P_final  =     4.77604166666666;
                V_final  =     4.71270718232044;
                END;
              END;
            END;
          END;
        END;
      ELSE DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(sec ) AND 
          sec  <               82.745 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF  NOT MISSING(sec ) AND 
                        82.745 <= sec  THEN DO;
           _BRANCH_ =    2; 
          END; 
        IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
            IF study  <                  2.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF                  2.5 <= study  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
            IF                 2499 <= scho  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF scho  <                 2499 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
            IF                 45.5 <= town  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF town  <                 45.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

        IF _BRANCH_ EQ    1 THEN DO;
          IF  NOT MISSING(study ) AND 
            study  <                  2.5 THEN DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(scho ) AND 
              scho  <                 1976 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(scho ) AND 
                              1976 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                IF                  3.5 <= town  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF town  <                  3.5 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

            IF _BRANCH_ EQ    2 THEN DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(town ) AND 
                town  <                 32.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(town ) AND 
                                32.5 <= town  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                  IF                 2103 <= scho  THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF scho  <                 2103 THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    1; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                  IF sec  <               80.645 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF               80.645 <= sec  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
                  IF sect  <                  8.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                  8.5 <= sect  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                  IF nat  <                 46.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                 46.5 <= nat  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

              IF _BRANCH_ EQ    1 THEN DO;
                _NODE_  =                  242;
                _LEAF_  =                   71;
                P_final  =                4.625;
                V_final  =     4.66666666666666;
                END;
              ELSE DO;

                _BRANCH_ = -1;
                  IF  NOT MISSING(town ) AND 
                  town  <                 36.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF  NOT MISSING(town ) AND 
                                  36.5 <= town  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                    IF scho  <               2011.5 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF               2011.5 <= scho  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    2; 
                  END;
                IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                    IF sec  <               81.595 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF               81.595 <= sec  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    2; 
                  END;
                IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                    IF nat  <                 67.5 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF                 67.5 <= nat  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    2; 
                  END;
                IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

                IF _BRANCH_ EQ    2 THEN DO;
                  _NODE_  =                  303;
                  _LEAF_  =                   73;
                  P_final  =     4.42105263157894;
                  V_final  =     4.42857142857142;
                  END;
                ELSE DO;
                  _NODE_  =                  302;
                  _LEAF_  =                   72;
                  P_final  =                    4;
                  V_final  =                    4;
                  END;
                END;
              END;
            ELSE DO;
              _NODE_  =                  164;
              _LEAF_  =                   70;
              P_final  =     4.64912280701754;
              V_final  =     4.54237288135593;
              END;
            END;
          ELSE DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(sec ) AND 
              sec  <               81.115 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(sec ) AND 
                            81.115 <= sec  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                IF nat  <                    8 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                    8 <= nat  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

            IF _BRANCH_ EQ    1 THEN DO;
              _NODE_  =                  166;
              _LEAF_  =                   74;
              P_final  =     4.88548539114043;
              V_final  =     4.89323308270676;
              END;
            ELSE DO;
              _NODE_  =                  167;
              _LEAF_  =                   75;
              P_final  =     4.95743145743145;
              V_final  =     4.95531135531135;
              END;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(study ) AND 
            study  <                  2.5 THEN DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(scho ) AND 
              scho  <               1994.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(scho ) AND 
                            1994.5 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                IF                    3 <= town  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF town  <                    3 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

            IF _BRANCH_ EQ    2 THEN DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(town ) AND 
                town  <                 35.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(town ) AND 
                                35.5 <= town  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                  IF scho  <               2367.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF               2367.5 <= scho  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                  IF               82.985 <= sec  THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF sec  <               82.985 THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    1; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                  IF nat  <                 67.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                 67.5 <= nat  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

              IF _BRANCH_ EQ    2 THEN DO;
                _NODE_  =                  245;
                _LEAF_  =                   79;
                P_final  =     4.86666666666666;
                V_final  =     4.66666666666666;
                END;
              ELSE DO;

                _BRANCH_ = -1;
                  IF  NOT MISSING(town ) AND 
                  town  <                 32.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF  NOT MISSING(town ) AND 
                                  32.5 <= town  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                    IF                 2043 <= scho  THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF scho  <                 2043 THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    1; 
                  END;
                IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
                    IF sect  <                  8.5 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF                  8.5 <= sect  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    2; 
                  END;
                IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                    IF nat  <                 52.5 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF                 52.5 <= nat  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    2; 
                  END;
                IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                    IF sec  <               83.095 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF               83.095 <= sec  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    2; 
                  END;
                IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

                IF _BRANCH_ EQ    1 THEN DO;
                  _NODE_  =                  304;
                  _LEAF_  =                   77;
                  P_final  =     4.66666666666666;
                  V_final  =                  5.2;
                  END;
                ELSE DO;
                  _NODE_  =                  305;
                  _LEAF_  =                   78;
                  P_final  =                  4.1;
                  V_final  =     4.16666666666666;
                  END;
                END;
              END;
            ELSE DO;
              _NODE_  =                  168;
              _LEAF_  =                   76;
              P_final  =     4.82758620689655;
              V_final  =     4.71698113207547;
              END;
            END;
          ELSE DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(sec ) AND 
              sec  <               84.525 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(sec ) AND 
                            84.525 <= sec  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                IF scho  <               2507.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF               2507.5 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

            IF _BRANCH_ EQ    2 THEN DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(sect ) AND 
                sect  <                  8.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(sect ) AND 
                                 8.5 <= sect  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
                  IF study  <                  3.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                  3.5 <= study  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                  IF sec  <               85.695 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF               85.695 <= sec  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

              IF _BRANCH_ EQ    2 THEN DO;
                _NODE_  =                  249;
                _LEAF_  =                   84;
                P_final  =     5.03184713375796;
                V_final  =     5.02919708029197;
                END;
              ELSE DO;
                _NODE_  =                  248;
                _LEAF_  =                   83;
                P_final  =     5.11969696969697;
                V_final  =       5.102416570771;
                END;
              END;
            ELSE DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(sect ) AND 
                sect  <                  8.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(sect ) AND 
                                 8.5 <= sect  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
                  IF study  <                  3.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                  3.5 <= study  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                  IF sec  <                84.51 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                84.51 <= sec  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

              IF _BRANCH_ EQ    2 THEN DO;
                _NODE_  =                  247;
                _LEAF_  =                   82;
                P_final  =     4.97986577181208;
                V_final  =     4.98863636363636;
                END;
              ELSE DO;

                _BRANCH_ = -1;
                  IF  NOT MISSING(town ) AND 
                  town  <                 31.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF  NOT MISSING(town ) AND 
                                  31.5 <= town  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                    IF                 2146 <= scho  THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF scho  <                 2146 THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    1; 
                  END;
                IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                    IF nat  <                 10.5 THEN DO;
                     _BRANCH_ =    1; 
                    END; 
                    ELSE IF                 10.5 <= nat  THEN DO;
                     _BRANCH_ =    2; 
                    END; 
                   ELSE _BRANCH_ =    2; 
                  END;
                IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

                IF _BRANCH_ EQ    1 THEN DO;
                  _NODE_  =                  306;
                  _LEAF_  =                   80;
                  P_final  =     4.99682287529785;
                  V_final  =     5.00973236009732;
                  END;
                ELSE DO;
                  _NODE_  =                  307;
                  _LEAF_  =                   81;
                  P_final  =     5.04478735415882;
                  V_final  =     5.04352678571428;
                  END;
                END;
              END;
            END;
          END;
        END;
      END;
    END;
  ELSE DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sec ) AND 
      sec  <               90.845 THEN DO;
       _BRANCH_ =    1; 
      END; 
      ELSE IF  NOT MISSING(sec ) AND 
                    90.845 <= sec  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
        IF               2505.5 <= scho  THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF scho  <               2505.5 THEN DO;
         _BRANCH_ =    2; 
        END; 
       ELSE _BRANCH_ =    1; 
      END;
    IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

    IF _BRANCH_ EQ    1 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(study ) AND 
        study  <                  3.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF  NOT MISSING(study ) AND 
                         3.5 <= study  THEN DO;
         _BRANCH_ =    2; 
        END; 
      IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
          IF sect  <                  8.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF                  8.5 <= sect  THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    2; 
        END;
      IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

      IF _BRANCH_ EQ    2 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(town ) AND 
          town  <                 37.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF  NOT MISSING(town ) AND 
                          37.5 <= town  THEN DO;
           _BRANCH_ =    2; 
          END; 
        IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
            IF                  4.5 <= study  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF study  <                  4.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
            IF scho  <               2469.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF               2469.5 <= scho  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
            IF                  7.5 <= sect  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF sect  <                  7.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

        IF _BRANCH_ EQ    2 THEN DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(town ) AND 
            town  <                 39.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(town ) AND 
                            39.5 <= town  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF scho  <                313.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                313.5 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
              IF                 75.5 <= nat  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF nat  <                 75.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

          IF _BRANCH_ EQ    1 THEN DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(scho ) AND 
              scho  <               1576.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(scho ) AND 
                            1576.5 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                IF                 38.5 <= town  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF town  <                 38.5 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                IF sec  <               90.455 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF               90.455 <= sec  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

            IF _BRANCH_ EQ    2 THEN DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(sec ) AND 
                sec  <               89.805 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(sec ) AND 
                              89.805 <= sec  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                  IF scho  <                 1938 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                 1938 <= scho  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                  IF                 38.5 <= town  THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF town  <                 38.5 THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    1; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                  IF nat  <                 67.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                 67.5 <= nat  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

              IF _BRANCH_ EQ    2 THEN DO;
                _NODE_  =                  269;
                _LEAF_  =                  121;
                P_final  =     5.79310344827586;
                V_final  =                  5.6;
                END;
              ELSE DO;
                _NODE_  =                  268;
                _LEAF_  =                  120;
                P_final  =     5.22857142857142;
                V_final  =     5.26666666666666;
                END;
              END;
            ELSE DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(scho ) AND 
                scho  <                 1366 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(scho ) AND 
                                1366 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                  IF                90.24 <= sec  THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF sec  <                90.24 THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    1; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                  IF town  <                 38.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                 38.5 <= town  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                  IF nat  <                   53 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                   53 <= nat  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

              IF _BRANCH_ EQ    1 THEN DO;
                _NODE_  =                  266;
                _LEAF_  =                  118;
                P_final  =     5.58695652173913;
                V_final  =     5.47058823529411;
                END;
              ELSE DO;
                _NODE_  =                  267;
                _LEAF_  =                  119;
                P_final  =                    6;
                V_final  =     5.92307692307692;
                END;
              END;
            END;
          ELSE DO;
            _NODE_  =                  119;
            _LEAF_  =                  122;
            P_final  =     5.23766816143497;
            V_final  =     5.27272727272727;
            END;
          END;
        ELSE DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(sect ) AND 
            sect  <                  8.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(sect ) AND 
                             8.5 <= sect  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF scho  <                183.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                183.5 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
              IF nat  <                   20 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                   20 <= nat  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
              IF sec  <                88.42 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                88.42 <= sec  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

          IF _BRANCH_ EQ    1 THEN DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(town ) AND 
              town  <                 20.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(town ) AND 
                              20.5 <= town  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                IF                 70.5 <= nat  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF nat  <                 70.5 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

            IF _BRANCH_ EQ    1 THEN DO;
              _NODE_  =                  190;
              _LEAF_  =                  114;
              P_final  =                4.125;
              V_final  =                  4.5;
              END;
            ELSE DO;
              _NODE_  =                  191;
              _LEAF_  =                  115;
              P_final  =      4.9922480620155;
              V_final  =     4.97435897435897;
              END;
            END;
          ELSE DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(sec ) AND 
              sec  <                89.37 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(sec ) AND 
                             89.37 <= sec  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                IF scho  <                   58 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                   58 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                IF nat  <                   34 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                   34 <= nat  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                IF town  <                    2 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                    2 <= town  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

            IF _BRANCH_ EQ    1 THEN DO;
              _NODE_  =                  192;
              _LEAF_  =                  116;
              P_final  =     5.09872611464968;
              V_final  =     5.10791366906474;
              END;
            ELSE DO;
              _NODE_  =                  193;
              _LEAF_  =                  117;
              P_final  =     5.26792452830188;
              V_final  =     5.20320855614973;
              END;
            END;
          END;
        END;
      ELSE DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(sec ) AND 
          sec  <               89.355 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF  NOT MISSING(sec ) AND 
                        89.355 <= sec  THEN DO;
           _BRANCH_ =    2; 
          END; 
        IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
            IF               2492.5 <= scho  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF scho  <               2492.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
            IF sect  <                  4.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF                  4.5 <= sect  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
            IF                 45.5 <= town  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF town  <                 45.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

        IF _BRANCH_ EQ    1 THEN DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(study ) AND 
            study  <                  2.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(study ) AND 
                             2.5 <= study  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF scho  <                  2.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                  2.5 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

          IF _BRANCH_ EQ    1 THEN DO;
            _NODE_  =                  112;
            _LEAF_  =                  109;
            P_final  =     5.13636363636363;
            V_final  =                    5;
            END;
          ELSE DO;
            _NODE_  =                  113;
            _LEAF_  =                  110;
            P_final  =     5.58451327433628;
            V_final  =     5.60714285714285;
            END;
          END;
        ELSE DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(sec ) AND 
            sec  <               90.015 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(sec ) AND 
                          90.015 <= sec  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
              IF nat  <                    8 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                    8 <= nat  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF                 2452 <= scho  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF scho  <                 2452 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

          IF _BRANCH_ EQ    1 THEN DO;
            _NODE_  =                  114;
            _LEAF_  =                  111;
            P_final  =     5.71306332002281;
            V_final  =     5.72463768115942;
            END;
          ELSE DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(study ) AND 
              study  <                  2.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(study ) AND 
                               2.5 <= study  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                IF scho  <                  2.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                  2.5 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                IF               90.835 <= sec  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF sec  <               90.835 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

            IF _BRANCH_ EQ    1 THEN DO;
              _NODE_  =                  188;
              _LEAF_  =                  112;
              P_final  =     5.21428571428571;
              V_final  =                    5;
              END;
            ELSE DO;
              _NODE_  =                  189;
              _LEAF_  =                  113;
              P_final  =     5.82180974477958;
              V_final  =     5.83496503496503;
              END;
            END;
          END;
        END;
      END;
    ELSE DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(study ) AND 
        study  <                  3.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF  NOT MISSING(study ) AND 
                         3.5 <= study  THEN DO;
         _BRANCH_ =    2; 
        END; 
      IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
          IF sect  <                  8.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF                  8.5 <= sect  THEN DO;
           _BRANCH_ =    2; 
          END; 
         ELSE _BRANCH_ =    2; 
        END;
      IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

      IF _BRANCH_ EQ    2 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(sec ) AND 
          sec  <                 93.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF  NOT MISSING(sec ) AND 
                          93.5 <= sec  THEN DO;
           _BRANCH_ =    2; 
          END; 
        IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
            IF                 49.5 <= nat  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF nat  <                 49.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
            IF                  3.5 <= town  THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF town  <                  3.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    1; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
            IF scho  <               2469.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF               2469.5 <= scho  THEN DO;
             _BRANCH_ =    2; 
            END; 
           ELSE _BRANCH_ =    2; 
          END;
        IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

        IF _BRANCH_ EQ    2 THEN DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(sec ) AND 
            sec  <               94.805 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(sec ) AND 
                          94.805 <= sec  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF scho  <               1561.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF               1561.5 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
              IF                 36.5 <= town  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF town  <                 36.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
              IF nat  <                   37 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                   37 <= nat  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
              IF sect  <                    3 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF                    3 <= sect  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

          IF _BRANCH_ EQ    1 THEN DO;
            IF  NOT MISSING(sect ) AND 
              sect  <                  8.5 THEN DO;
              _NODE_  =                  204;
              _LEAF_  =                  137;
              P_final  =     5.56923076923076;
              V_final  =     5.77777777777777;
              END;
            ELSE DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(scho ) AND 
                scho  <               1946.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(scho ) AND 
                              1946.5 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(town ) THEN DO;
                  IF                    2 <= town  THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF town  <                    2 THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    1; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                  IF                 53.5 <= nat  THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF nat  <                 53.5 THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    1; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

              IF _BRANCH_ EQ    2 THEN DO;
                _NODE_  =                  279;
                _LEAF_  =                  139;
                P_final  =     5.58888888888888;
                V_final  =     5.59259259259259;
                END;
              ELSE DO;
                _NODE_  =                  278;
                _LEAF_  =                  138;
                P_final  =     5.84615384615384;
                V_final  =               5.8625;
                END;
              END;
            END;
          ELSE DO;
            _NODE_  =                  127;
            _LEAF_  =                  140;
            P_final  =     5.91725768321513;
            V_final  =     5.91304347826087;
            END;
          END;
        ELSE DO;

          _BRANCH_ = -1;
            IF  NOT MISSING(town ) AND 
            town  <                 37.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF  NOT MISSING(town ) AND 
                            37.5 <= town  THEN DO;
             _BRANCH_ =    2; 
            END; 
          IF _BRANCH_ LT 0 AND NOT MISSING(study ) THEN DO;
              IF                  4.5 <= study  THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF study  <                  4.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    1; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
              IF scho  <               2469.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF               2469.5 <= scho  THEN DO;
               _BRANCH_ =    2; 
              END; 
             ELSE _BRANCH_ =    2; 
            END;
          IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

          IF _BRANCH_ EQ    2 THEN DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(town ) AND 
              town  <                 39.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(town ) AND 
                              39.5 <= town  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                IF scho  <                313.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                313.5 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                IF nat  <                 49.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                 49.5 <= nat  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

            IF _BRANCH_ EQ    1 THEN DO;
              _NODE_  =                  202;
              _LEAF_  =                  135;
              P_final  =     5.96610169491525;
              V_final  =     5.95454545454545;
              END;
            ELSE DO;
              _NODE_  =                  203;
              _LEAF_  =                  136;
              P_final  =     5.64429530201342;
              V_final  =     5.68627450980392;
              END;
            END;
          ELSE DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(sec ) AND 
              sec  <                92.42 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(sec ) AND 
                             92.42 <= sec  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                IF nat  <                 60.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                 60.5 <= nat  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    1; 

            IF _BRANCH_ EQ    2 THEN DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(sect ) AND 
                sect  <                  8.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(sect ) AND 
                                 8.5 <= sect  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                  IF scho  <                183.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                183.5 <= scho  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(nat ) THEN DO;
                  IF nat  <                 26.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                 26.5 <= nat  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

              IF _BRANCH_ EQ    1 THEN DO;
                _NODE_  =                  274;
                _LEAF_  =                  133;
                P_final  =     5.36842105263157;
                V_final  =     5.36842105263157;
                END;
              ELSE DO;
                _NODE_  =                  275;
                _LEAF_  =                  134;
                P_final  =     5.61764705882352;
                V_final  =     5.57142857142857;
                END;
              END;
            ELSE DO;

              _BRANCH_ = -1;
                IF  NOT MISSING(sect ) AND 
                sect  <                  8.5 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF  NOT MISSING(sect ) AND 
                                 8.5 <= sect  THEN DO;
                 _BRANCH_ =    2; 
                END; 
              IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                  IF scho  <                183.5 THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF                183.5 <= scho  THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    2; 
                END;
              IF _BRANCH_ LT 0 AND NOT MISSING(sec ) THEN DO;
                  IF                 92.4 <= sec  THEN DO;
                   _BRANCH_ =    1; 
                  END; 
                  ELSE IF sec  <                 92.4 THEN DO;
                   _BRANCH_ =    2; 
                  END; 
                 ELSE _BRANCH_ =    1; 
                END;
              IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

              IF _BRANCH_ EQ    1 THEN DO;
                _NODE_  =                  272;
                _LEAF_  =                  131;
                P_final  =     5.22549019607843;
                V_final  =     5.03030303030303;
                END;
              ELSE DO;
                _NODE_  =                  273;
                _LEAF_  =                  132;
                P_final  =      5.4059405940594;
                V_final  =     5.43670886075949;
                END;
              END;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(study ) AND 
          study  <                  2.5 THEN DO;
          _NODE_  =                   60;
          _LEAF_  =                  123;
          P_final  =     5.29166666666666;
          V_final  =                 5.25;
          END;
        ELSE DO;
          IF  NOT MISSING(sec ) AND 
            sec  <               92.455 THEN DO;

            _BRANCH_ = -1;
              IF  NOT MISSING(sec ) AND 
              sec  <               91.535 THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF  NOT MISSING(sec ) AND 
                            91.535 <= sec  THEN DO;
               _BRANCH_ =    2; 
              END; 
            IF _BRANCH_ LT 0 AND NOT MISSING(sect ) THEN DO;
                IF                  8.5 <= sect  THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF sect  <                  8.5 THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    1; 
              END;
            IF _BRANCH_ LT 0 AND NOT MISSING(scho ) THEN DO;
                IF scho  <                    3 THEN DO;
                 _BRANCH_ =    1; 
                END; 
                ELSE IF                    3 <= scho  THEN DO;
                 _BRANCH_ =    2; 
                END; 
               ELSE _BRANCH_ =    2; 
              END;
            IF _BRANCH_ LT 0 THEN _BRANCH_ =    2; 

            IF _BRANCH_ EQ    1 THEN DO;
              _NODE_  =                  196;
              _LEAF_  =                  124;
              P_final  =     5.88723872387238;
              V_final  =     5.90387858347386;
              END;
            ELSE DO;
              _NODE_  =                  197;
              _LEAF_  =                  125;
              P_final  =     5.93652849740932;
              V_final  =     5.93931398416886;
              END;
            END;
          ELSE DO;
            IF  NOT MISSING(sec ) AND 
              sec  <                 94.1 THEN DO;
              _NODE_  =                  198;
              _LEAF_  =                  126;
              P_final  =     5.96929302547012;
              V_final  =      5.9707351891506;
              END;
            ELSE DO;
              IF  NOT MISSING(nat ) AND 
                nat  <                 11.5 THEN DO;
                _NODE_  =                  270;
                _LEAF_  =                  127;
                P_final  =     5.90909090909091;
                V_final  =      5.9047619047619;
                END;
              ELSE DO;
                IF  NOT MISSING(sec ) AND 
                  sec  <                95.43 THEN DO;
                  _NODE_  =                  308;
                  _LEAF_  =                  128;
                  P_final  =     5.99042323138708;
                  V_final  =     5.98902027027027;
                  END;
                ELSE DO;
                  IF  NOT MISSING(sect ) AND 
                                     8.5 <= sect  THEN DO;
                    _NODE_  =                  319;
                    _LEAF_  =                  130;
                    P_final  =      5.9751552795031;
                    V_final  =     5.95081967213114;
                    END;
                  ELSE DO;
                    _NODE_  =                  318;
                    _LEAF_  =                  129;
                    P_final  =     5.99799945439665;
                    V_final  =     5.99698712681457;
                    END;
                  END;
                END;
              END;
            END;
          END;
        END;
      END;
    END;
  END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

