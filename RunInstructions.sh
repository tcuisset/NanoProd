gfal-mkdir https://eos.grif.fr:11000//eos/grif/cms/llr/store/user/evernazz/MiniAOD/ZbbHtt 

gfal-mkdir https://eos.grif.fr:11000//eos/grif/cms/llr/store/user/evernazz/MiniAOD/ZbbHtt/Zprime_Zh_Zbbhtautau_M500
gfal-mkdir https://eos.grif.fr:11000//eos/grif/cms/llr/store/user/evernazz/MiniAOD/ZbbHtt/Zprime_Zh_Zbbhtautau_M1000
gfal-mkdir https://eos.grif.fr:11000//eos/grif/cms/llr/store/user/evernazz/MiniAOD/ZbbHtt/Zprime_Zh_Zbbhtautau_M2000
gfal-mkdir https://eos.grif.fr:11000//eos/grif/cms/llr/store/user/evernazz/MiniAOD/ZbbHtt/Zprime_Zh_Zbbhtautau_M3000
gfal-mkdir https://eos.grif.fr:11000//eos/grif/cms/llr/store/user/evernazz/MiniAOD/ZbbHtt/Zprime_Zh_Zbbhtautau_M4000

gfal-mkdir https://eos.grif.fr:11000//eos/grif/cms/llr/store/user/evernazz/MiniAOD/ZbbHtt/Zprime_Zh_Ztautauhbb_M500
gfal-mkdir https://eos.grif.fr:11000//eos/grif/cms/llr/store/user/evernazz/MiniAOD/ZbbHtt/Zprime_Zh_Ztautauhbb_M1000
gfal-mkdir https://eos.grif.fr:11000//eos/grif/cms/llr/store/user/evernazz/MiniAOD/ZbbHtt/Zprime_Zh_Ztautauhbb_M2000
gfal-mkdir https://eos.grif.fr:11000//eos/grif/cms/llr/store/user/evernazz/MiniAOD/ZbbHtt/Zprime_Zh_Ztautauhbb_M3000
gfal-mkdir https://eos.grif.fr:11000//eos/grif/cms/llr/store/user/evernazz/MiniAOD/ZbbHtt/Zprime_Zh_Ztautauhbb_M4000

for i in {500,1000,2000,3000,4000}; \
 do xrdcp -r /grid_mnt/data__data.polcms/cms/cuisset/ZHbbtautau/jobs/Zprime_v3/Zprime_Zh_Zbbhtautau_M${i}/Step_5/ \
 root://eos.grif.fr///eos/grif/cms/llr/store/user/evernazz/MiniAOD/ZbbHtt/Zprime_Zh_Zbbhtautau_M${i}; done

for i in {500,1000,2000,3000,4000}; \
 do xrdcp -r /grid_mnt/data__data.polcms/cms/cuisset/ZHbbtautau/jobs/Zprime_v3/Zprime_Zh_Ztautauhbb_M${i}/Step_5/ \
 root://eos.grif.fr///eos/grif/cms/llr/store/user/evernazz/MiniAOD/ZbbHtt/Zprime_Zh_Ztautauhbb_M${i}; done

screen
source $PWD/env.sh
voms
law index

python RunKit/crabOverseer.py --cfg NanoProd/crab/overseer_cfg.yaml NanoProd/crab/Run2_2018/ZbbHtt_resonant.yaml NanoProd/crab/Run2_2018/ZttHbb_resonant.yaml
