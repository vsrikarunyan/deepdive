// ocr example from deepdive
// https://github.com/HazyResearch/deepdive/tree/master/examples/ocr

features(
  id          BIGSERIAL, 
  word_id     INT, 
  feature_id  INT, 
  feature_val BOOLEAN).

label1(
  wid   INT, 
  val   BOOLEAN).

label2(
  wid   INT, 
  val   BOOLEAN).

q1?(wid INT).
q2?(wid INT).

@label(val)
q1(wid) :- label1(wid, val).
@label(val)
q2(wid) :- label2(wid, val).

@weight(fid)
q1(wid) :- features(id, wid, fid, fval).
@weight(fid)
q2(wid) :- features(id, wid, fid, fval).