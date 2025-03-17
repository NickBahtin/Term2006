unit DModule;

// Provider=MSDASQL.1;Persist Security Info=False;User ID=sa;Data Source=km5db.srv

interface

uses
  SysUtils, Classes,DBChart,Graphics,Chart, ExpUnit, ComCtrls,
  Types, Menus,DBGridEh,DBGridEhImpExp, PrnDbgeh, Windows, DB, ADODB, ScktComp,
  Dialogs, RxMemDS, frxClass, frxDBSet, frxExportTXT, frxExportRTF,
  frxExportXLS, VKDBFDataSet,Controls,Registry,QStrings,AcedStrings,AcedCommon,
  ClipBrd,AcedContainers, CntFormula;

type
     PParamDom1 = ^TParamDom1;
     TParamDom1 = record
                      Wot,m_xvsall{,tarif_q,tarif_h2o}: double;
                      Tr,Tnvr: integer;
                      id_dom: integer;
                  end;
  PSvodAkt = ^TSvodAkt;
  TSvodAkt=record
             Date1,Date2: TDate;
             id: integer;
             key: byte;
             indxformatdbf: word;
             Logger: boolean;
             NameFileLog: string;
             NameFileExport: string;
             IndexReport: array[1..8] of TObject;
           end;

     THash= array[0..9] of BYTE;

     PErrRecords = ^ErrRecord;
     ErrRecord = record
                Start: Boolean;
                Num_err: Integer;
                DateBeg: TDateTime;
                Num_zap: Integer;
//                Uchet: Boolean;
              end;

  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADODataSet2: TADODataSet;
    DataSource2: TDataSource;
    DS_spr_org: TDataSource;
    spr_org: TADODataSet;
    dsBuilding: TDataSource;
    t_building: TADODataSet;
    dsCTP: TDataSource;
    tCTP: TADODataSet;
    t_buildingid_building: TIntegerField;
    t_buildingbuilding_addr: TStringField;
    t_buildingid_ctp: TIntegerField;
    t_buildingbuilding_notation: TStringField;
    t_buildingchange_date: TDateTimeField;
    t_buildingoperator: TStringField;
    t_buildingw_ot: TFloatField;
    t_buildingw_gvs: TFloatField;
    t_buildingtarif_q: TFloatField;
    t_buildingtarif_h2o: TFloatField;
    t_buildingtenants: TIntegerField;
    t_buildingm_xvs: TFloatField;
    t_counter: TADODataSet;
    DataSource7: TDataSource;
    t_counterid_counter: TIntegerField;
    t_counterid_model: TIntegerField;
    t_counterversion: TStringField;
    t_model: TADODataSet;
    DataSource8: TDataSource;
    tcountersys: TADODataSet;
    DataSource10: TDataSource;
    t_modelid_model: TIntegerField;
    t_modelmodel: TStringField;
    tdspcounter: TADODataSet;
    DataSource9: TDataSource;
    tdspcounterid_dsp_counter: TIntegerField;
    tdspcounterid_counter: TIntegerField;
    tdspcounterdy: TIntegerField;
    tdspcountercounter_sys: TIntegerField;
    tdspcounterchange_date: TDateTimeField;
    tdspcounteroperator: TStringField;
    tdspcounterid_building1: TIntegerField;
    tdspcounterid_building2: TIntegerField;
    tdspcounterid_building3: TIntegerField;
    tdspcounterid_building4: TIntegerField;
    tdspcounterid_building5: TIntegerField;
    tcountersyscounter_sys: TIntegerField;
    tcountersyssys_name: TStringField;
    tmpDataSet: TADODataSet;
    tempcmd: TADOCommand;
    ta_tabl: TADODataSet;
    ta_tablta: TSmallintField;
    ta_tablt1grfmin: TBCDField;
    ta_tablt1grfmax: TBCDField;
    ta_tablt2grfmax: TBCDField;
    DataSource11: TDataSource;
    ta15070: TADODataSet;
    tdspcountercounter_sys1: TWordField;
    stateDataSet: TADODataSet;
    tLine: TADODataSet;
    dsLine: TDataSource;
    MonitorDataSet: TADODataSet;
    SaveDialog2: TSaveDialog;
    tmpDataSet1: TADODataSet;
    Mess: TADODataSet;
    DataSetToPaint: TADODataSet;
    tizmk: TADODataSet;
    tizmkmodel: TStringField;
    tizmkid_counter: TIntegerField;
    tizmkizm_vel: TStringField;
    tizmktypepp: TStringField;
    tizmknumpp: TStringField;
    tizmkInterval: TWordField;
    tizmkDateposlp: TDateTimeField;
    tizmkdateslp: TDateTimeField;
    tizmkPrim: TStringField;
    tizmkOperator: TStringField;
    tizmkchange_date: TDateTimeField;
    tizmkizmkanal: TWordField;
    tmodel: TADODataSet;
    DStizmk: TDataSource;
    DSmodel: TDataSource;
    photo: TADODataSet;
    PrinterSetupDialog1: TPrinterSetupDialog;
    SaveDialog1: TSaveDialog;
    tdspcounteridta: TWordField;
    NormaValue: TADOStoredProc;
    t_buildingmxvs_pr: TFloatField;
    PmenuGridEh: TPopupMenu;
    menuitdridex1: TMenuItem;
    menuitdridex2: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    PMenuChart: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    t_counternetaddr: TIntegerField;
    t_countersubnetaddr: TIntegerField;
    tLineid_line: TIntegerField;
    tLineline_name: TStringField;
    tLineline_type: TIntegerField;
    tLinenode_name: TStringField;
    tLineport: TStringField;
    tLinebaud_rate: TIntegerField;
    tLinephone: TStringField;
    tLinewait_time: TIntegerField;
    tLineex_delay: TIntegerField;
    tLinetune_par: TStringField;
    tLinechange_date: TDateTimeField;
    tLineoperator: TStringField;
    tLinenumport: TIntegerField;
    tdspcounteropcpath: TStringField;
    t_modelshortname: TStringField;
    CS1: TClientSocket;
    tdspcounternumPRI: TStringField;
    tPotrebitel: TADODataSet;
    dsPotrebitel: TDataSource;
    tPotrebitelid_potreb: TIntegerField;
    tPotrebiteltypep: TIntegerField;
    tPotrebitelid_building: TIntegerField;
    tPotrebitelQotp: TStringField;
    tPotrebitelQgvs: TStringField;
    tPotrebitelVgvs: TStringField;
    tPotrebitelMgvs: TStringField;
    tPotrebitelVxvs: TStringField;
    tPotrebitelT1: TStringField;
    tPotrebitelT2: TStringField;
    tPotrebitelT3: TStringField;
    tPotrebitelOperator: TStringField;
    tPotrebitelchange_date: TDateTimeField;
    tPotrebitelName: TStringField;
    tholidays: TADODataSet;
    aktdb: TRxMemoryData;
    aktdbAddress: TStringField;
    aktdbType: TStringField;
    aktdbid_counter: TIntegerField;
    aktdbV: TFloatField;
    aktdbQ: TFloatField;
    aktdbTv: TFloatField;
    aktdbTq: TFloatField;
    aktdbDovV: TFloatField;
    aktdbDovQ: TFloatField;
    aktdbidModel: TIntegerField;
    aktdbsyst: TSmallintField;
    tmpDataSet2: TADODataSet;
    aktdbUrV: TFloatField;
    aktdbUrQ: TFloatField;
    aktdbTranzV: TFloatField;
    aktdbTranzQ: TFloatField;
    aktdbiddom: TIntegerField;
    aktdbTranz: TIntegerField;
    aktdbNeedDel: TBooleanField;
    AktDB1: TRxMemoryData;
    AktDB1Address: TStringField;
    AktDB1v47_50: TFloatField;
    AktDB1v44_47: TFloatField;
    AktDB1v41_44: TFloatField;
    AktDB1v41: TFloatField;
    AktDB1v_all: TFloatField;
    AktDB1sumAll: TFloatField;
    AktDB1id_counter: TIntegerField;
    AktDB1id_model: TIntegerField;
    t_buildingw_qgvs_ur: TFloatField;
    t_buildingw_ot_ur: TFloatField;
    t_buildingw_gvs_ur: TFloatField;
    t_buildingw_hvs_ur: TFloatField;
    aktdbDate: TRxMemoryData;
    aktdbDateDate1: TDateField;
    aktdbDateVgv: TFloatField;
    aktdbDateMgv: TFloatField;
    aktdbDateVxv: TFloatField;
    aktdbDatedVgv: TFloatField;
    aktdbDatedMgv: TFloatField;
    aktdbDatedVxv: TFloatField;
    aktdbDateVgv_ur: TFloatField;
    aktdbDateVxv_ur: TFloatField;
    aktdbDateVgv_tr: TFloatField;
    aktdbDateVxv_tr: TFloatField;
    aChartAutoMashtab: TMenuItem;
    aChartMin: TMenuItem;
    N4: TMenuItem;
    aChartMax: TMenuItem;
    aktdbDateVgv_ten: TFloatField;
    aktdbDateVxv_ten: TFloatField;
    AktDataSet: TfrxDBDataset;
    frReport1: TfrxReport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxTXTExport1: TfrxTXTExport;
    PDDbf: TVKDBFNTX;
    PGDbf: TVKDBFNTX;
    PEDBF: TVKDBFNTX;
    addressdbf: TVKDBFNTX;
    addressdbfSTREETID: TIntegerField;
    addressdbfSTREET: TStringField;
    aktdbDateudVgv: TFloatField;
    aktdbDateudVxv: TFloatField;
    PEDBFNPP: TIntegerField;
    PEDBFDATE_P: TDateField;
    PEDBFCODE: TIntegerField;
    PEDBFCODE_P: TStringField;
    PEDBFW_HOURS: TFloatField;
    tLineis_serial_num: TStringField;
    tLineparity: TWordField;
    tLineis_mac_addr: TStringField;
    tmpDataSet4: TADODataSet;
    GVQualDB: TRxMemoryData;
    GVQualDBAddress: TStringField;
    GVQualDBIdDom: TIntegerField;
    GVQualDBmodel: TIntegerField;
    GVQualDBVp: TFloatField;
    GVQualDBVn: TFloatField;
    GVQualDBV1: TFloatField;
    GVQualDBV2: TFloatField;
    GVQualDBV3: TFloatField;
    GVQualDBV4: TFloatField;
    frxGVQualDB: TfrxDBDataset;
    frxReport2: TfrxReport;
    ArhivDB: TRxMemoryData;
    ArhivDBDate1: TDateField;
    ArhivDBta: TFloatField;
    ArhivDBp1: TFloatField;
    ArhivDBp2: TFloatField;
    ArhivDBp3: TFloatField;
    ArhivDBT1: TFloatField;
    ArhivDBT2: TFloatField;
    ArhivDBt3: TFloatField;
    ArhivDBM1: TFloatField;
    ArhivDBM2: TFloatField;
    ArhivDBM3: TFloatField;
    ArhivDBv1: TFloatField;
    ArhivDBv2: TFloatField;
    ArhivDBQ: TFloatField;
    ArhivDBTp: TFloatField;
    ArhivDBErr: TStringField;
    ArhivDBM12: TFloatField;
    ArhivDBM21: TFloatField;
    ArhivDBT12: TFloatField;
    IntegrDB: TRxMemoryData;
    IntegrDBDate1: TStringField;
    IntegrDBM1: TFloatField;
    IntegrDBM2: TFloatField;
    IntegrDBMi: TFloatField;
    IntegrDBV1: TFloatField;
    IntegrDBV2: TFloatField;
    IntegrDBQ: TFloatField;
    IntegrDBTp: TFloatField;
    IntegrDBTime1: TStringField;
    Arhivdata: TfrxDBDataset;
    Integrator: TfrxDBDataset;
    t_dc_cnt: TADODataSet;
    ds_dc_cnt: TDataSource;
    tmpCmd: TADOCommand;
    TBNDB: TADOConnection;
    aktdbtenants: TIntegerField;
    aktdbNarg: TFloatField;
    aktdbgood: TSmallintField;
    GVQualDBSh1: TFloatField;
    GVQualDBSh2: TFloatField;
    GVQualDBSh3: TFloatField;
    GVQualDBSh4: TFloatField;
    GVQualDBItogV: TFloatField;
    GVQualDBItogSH: TFloatField;
    aktdbNorm1: TFloatField;
    aktdbNorm2: TFloatField;
    t_counterzavod_num: TStringField;
    GVQualDBTranzit: TSmallintField;
    PHDBF: TVKDBFNTX;
    t_db_update: TADODataSet;
    DBUpdDS: TDataSource;
    t_db_updateversion: TStringField;
    t_db_updateid_disp: TSmallintField;
    t_db_updatedisp_name: TStringField;
    t_db_updateinb_vers: TStringField;
    t_db_updateopc_vers: TStringField;
    t_db_updategis_vers: TStringField;
    t_db_updatebuilding: TSmallintField;
    t_db_updatecounters: TSmallintField;
    t_db_updatetenants: TIntegerField;
    t_db_updatew_ot: TFloatField;
    t_db_updatew_gvs: TFloatField;
    CntOTPDb: TRxMemoryData;
    CntOTPDbid_build: TIntegerField;
    CntOTPDbtype: TStringField;
    CntOTPDbzavod_num: TStringField;
    CntOTPDbQb: TFloatField;
    CntOTPDbQe: TFloatField;
    CntOTPDbQ: TFloatField;
    cntGVSdb: TRxMemoryData;
    cntGVSdbid_build: TIntegerField;
    cntGVSdbtype: TStringField;
    cntGVSdbzavod_num: TStringField;
    cntGVSdbQb: TFloatField;
    cntGVSdbQe: TFloatField;
    cntGVSdbV1b: TFloatField;
    cntGVSdbV2b: TFloatField;
    cntGVSdbV1e: TFloatField;
    cntGVSdbV2e: TFloatField;
    cntGVSdbQ: TFloatField;
    cntGVSdbV: TFloatField;
    CntOtpDB1: TfrxDBDataset;
    CntGvsDB1: TfrxDBDataset;
    CntOTPDbDoschet: TStringField;
    cntGVSdbDoschet: TStringField;
    UserDB: TRxMemoryData;
    UserDBName: TStringField;
    UserDBpr: TStringField;
    UserDBdostup: TWordField;
    UserDBdropp: TBooleanField;
    UserDBlogin: TStringField;
    t_dc_cntid_dc: TIntegerField;
    t_dc_cntid_building: TIntegerField;
    t_dc_cntipaddr: TStringField;
    t_dc_cntstate: TIntegerField;
    t_dc_cntcomments: TStringField;
    t_counterid_line: TIntegerField;
    aktdbFaktV: TFloatField;
    aktdbFaktQ: TFloatField;
    aktdbDiffV: TFloatField;
    aktdbDiffQ: TFloatField;
    aktdbGroup: TWordField;
    aktdbPersV: TFloatField;
    aktdbPersQ: TFloatField;
    t_counterNvvodaXV: TStringField;
    CmdCheckParam: TADODataSet;
    t_db_updateid_district: TIntegerField;
    spr_dist: TADODataSet;
    spr_distid_district: TIntegerField;
    spr_distdistrict_name: TStringField;
    sprdistDS: TDataSource;
    aktdbsidcounters: TStringField;
    t_buildingOrgTSO: TStringField;
    t_buildingNdogTSO: TStringField;
    aktdbGf: TFloatField;
    aktdbGp: TFloatField;
    aktdbGfp: TFloatField;
    aktdbWp: TFloatField;
    aktdbWfp: TFloatField;
    aktdbsCTP: TStringField;
    DBNepolnAtrib: TRxMemoryData;
    DBNepolnAtribAddr: TStringField;
    DBNepolnAtribKub: TIntegerField;
    DBNepolnAtribYearPostr: TWordField;
    DBNepolnAtribWot: TFloatField;
    DSNepAtr: TDataSource;
    aktdbdt: TFloatField;
    aktdbdtgrf: TFloatField;
    aktdbGp_ukr: TFloatField;
    aktdbGp_d: TFloatField;
    aktdbGukr: TFloatField;
    aktdbQukr: TFloatField;
    aktdbGp_ukrf: TFloatField;
    aktdbGp_df: TFloatField;
    aktdbdt_grf: TFloatField;
    t_buildingid_street: TIntegerField;
    t_buildingnum_building: TStringField;
    t_buildingkorp: TStringField;
    t_buildingstroenie: TStringField;
    t_buildingName_uch: TStringField;
    t_buildingid_org: TIntegerField;
    t_buildingSeria: TStringField;
    t_buildingBuild_year: TSmallintField;
    t_buildingfloors: TIntegerField;
    t_buildingKolv_p: TWordField;
    t_buildingKolv_flat: TSmallintField;
    t_buildingKolv_lift: TWordField;
    t_buildingSd: TSmallintField;
    t_buildingIznos: TWordField;
    t_buildingkub: TIntegerField;
    t_buildingid_type: TIntegerField;
    t_buildingMat_sten: TStringField;
    t_buildingNum_kv_bti: TIntegerField;
    t_buildingnum_inv_bti: TIntegerField;
    t_buildingDate_passport: TDateTimeField;
    t_buildingBal_cost: TIntegerField;
    t_buildingInv_cost: TFloatField;
    t_buildingPerecritia: TStringField;
    t_buildingid_district: TIntegerField;
    t_buildingid_dez: TIntegerField;
    t_buildingStreet: TStringField;
    t_buildingSokr: TStringField;
    tmpRep: TfrxReport;
    t_buildingCTP: TStringField;
    aktdbsd: TSmallintField;
    aktdbfloors: TIntegerField;
    aktdbseria: TStringField;
    aktdbbyear: TSmallintField;
    aktdbIznos: TSmallintField;
    aktdbKub: TIntegerField;
    tLineid_dk: TIntegerField;
    KVaddDBF: TVKDBFNTX;
    KVaddDBFDATAREP: TDateField;
    KVaddDBFNUMPU: TStringField;
    KVaddDBFTYPE_PU: TIntegerField;
    KVaddDBFSTREETID: TIntegerField;
    KVaddDBFHOUSE1: TStringField;
    KVaddDBFHOUSE2: TStringField;
    KVaddDBFHOUSE3: TStringField;
    KVaddDBFFLATNUM: TStringField;
    KVaddDBFDATASTART: TDateField;
    KVdataDBF: TVKDBFNTX;
    KVdataDBFNUM_PU: TStringField;
    KVdataDBFDATE_POK: TDateField;
    KVdataDBFPRIZN_NACH: TIntegerField;
    KVdataDBFPOKAZ_PU: TFloatField;
    KVdataDBFTIME_PU: TFloatField;
    aktdbkv: TRxMemoryData;
    aktdbkvAddress: TStringField;
    aktdbkvkv: TWordField;
    aktdbkvn_pu: TStringField;
    aktdbkvv1: TFloatField;
    aktdbkvv2: TFloatField;
    aktdbkvdv: TFloatField;
    aktdbkvdTw: TFloatField;
    dbkv: TfrxDBDataset;
    frxReport1: TfrxReport;
    t_dc_cntid_line: TIntegerField;
    cntGVSdbDoschetV: TFloatField;
    tmpDS1: TADODataSet;
    dskspd: TDataSource;
    t_kspd: TADODataSet;
    DS_sobkspd: TDataSource;
    t_sobkspd: TADODataSet;
    t_kspdid_kspd: TIntegerField;
    t_kspdmon_time: TDateTimeField;
    t_kspdid_build: TIntegerField;
    t_kspdmaskkont: TSmallintField;
    t_kspdsob1: TSmallintField;
    t_kspdsob2: TSmallintField;
    t_kspdsob3: TSmallintField;
    t_kspdsob4: TSmallintField;
    t_kspdstate: TIntegerField;
    t_kspdserverIP: TStringField;
    t_kspdzavnum: TIntegerField;
    t_kspdobj1: TStringField;
    t_kspdid_keymap: TIntegerField;
    dsEldom: TDataSource;
    t_eldom: TADODataSet;
    t_eldomid_build: TIntegerField;
    t_eldomzavnum: TIntegerField;
    t_eldomid_model: TSmallintField;
    t_eldomtype_p: TSmallintField;
    t_eldomid_counter: TIntegerField;
    t_eldomnumpole: TSmallintField;
    t_eldomid_line: TIntegerField;
    t_eldomLine1: TStringField;
    t_eldomtypres: TSmallintField;
    DSProj: TDataSource;
    t_project: TADODataSet;
    t_projectid_pr: TIntegerField;
    t_projectprname: TStringField;
    t_buildingid_pr: TIntegerField;
    t_buildingProj: TStringField;
    t_buildingtypezd: TWordField;
    t_buildingSotap: TFloatField;
    KLenEfDB: TRxMemoryData;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    FloatField2: TFloatField;
    FloatField4: TFloatField;
    IntegerField2: TIntegerField;
    SmallintField1: TSmallintField;
    IntegerField4: TIntegerField;
    WordField1: TWordField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    SmallintField3: TSmallintField;
    IntegerField6: TIntegerField;
    KLenEfDBtypezd: TSmallintField;
    KLenEfDBSdivV: TFloatField;
    KLenEfDBKtq: TFloatField;
    t_sobkspdid_sob: TIntegerField;
    t_sobkspdshname: TStringField;
    t_sobkspdnamesob0: TStringField;
    t_sobkspdnamesob1: TStringField;
    DieData: TRxMemoryData;
    StringField5: TStringField;
    StringField6: TStringField;
    DieDataid_cnt: TIntegerField;
    DieDataparam: TWordField;
    DieDataznach: TFloatField;
    DieDataFromDt: TDateTimeField;
    DieDatatoDt: TDateTimeField;
    DieDatalenper: TFloatField;
    DieDS: TDataSource;
    t_sobkspdneshtat: TBooleanField;
    kspdstateDS: TADODataSet;
    kspdhistkvds: TADODataSet;
    Akt2ds: TRxMemoryData;
    StringField7: TStringField;
    StringField8: TStringField;
    FloatField1: TFloatField;
    FloatField3: TFloatField;
    Akt2dsnpp: TWordField;
    Akt2dsn_pu_gvs: TStringField;
    Akt2dsid_counter: TIntegerField;
    Akt2dsmodel: TIntegerField;
    Akt2dssys1: TSmallintField;
    Akt2dsint1: TFloatField;
    Akt2dsint2: TFloatField;
    Akt2dsint1e: TFloatField;
    Akt2dsint2e: TFloatField;
    Akt2dsintTwb: TFloatField;
    Akt2dsintTwe: TFloatField;
    Akt2dsTw: TFloatField;
    Akt2dsid_counter2: TIntegerField;
    Akt2dsmodel2: TIntegerField;
    Akt2dssys12: TSmallintField;
    t_counterid_apart: TIntegerField;
    DSapartsku: TDataSource;
    t_apart_sku: TADODataSet;
    t_apart_skuname: TStringField;
    t_apart_skuid_apart: TIntegerField;
    tmpFormula: TCntFormula;
    GVQualDBV5: TFloatField;
    GVQualDBV6: TFloatField;
    GVQualDBV7: TFloatField;
    GVQualDBV8: TFloatField;
    GVQualDBSh5: TFloatField;
    GVQualDBSh6: TFloatField;
    GVQualDBSh7: TFloatField;
    GVQualDBSh8: TFloatField;
    GVQualDBH1: TIntegerField;
    GVQualDBH2: TIntegerField;
    GVQualDBH3: TIntegerField;
    GVQualDBH4: TIntegerField;
    GVQualDBh5: TIntegerField;
    GVQualDBH6: TIntegerField;
    GVQualDBH7: TIntegerField;
    GVQualDBH8: TIntegerField;
    GVQualDBObVgv: TFloatField;
    GVQualDBItogHour: TFloatField;
    t_dc_cnttypDK: TWordField;
    dsrt2: TDataSource;
    t_rt2: TADODataSet;
    t_rt2id_rt2: TIntegerField;
    t_rt2netaddr: TIntegerField;
    t_rt2id_line: TIntegerField;
    t_rt2id_keymap: TIntegerField;
    t_rt2id_build: TIntegerField;
    provSQL: TADODataSet;
    IntegrDBTmp1: TFloatField;
    IntegrDBTmp3: TFloatField;
    IntegrDBTmp2: TFloatField;
    IntegrDBTmp4: TFloatField;
    IntegrDBTmp5: TFloatField;
    IntegrDBTmp6: TFloatField;
    IntegrDBTmp7: TFloatField;
    IntegrDBTmp8: TFloatField;
    IntegrDBTmp9: TFloatField;
    Akt2dsintQb: TFloatField;
    Akt2dsintQe: TFloatField;
    Akt2dsQ: TFloatField;
    t_countergrp: TIntegerField;
    t_groupds: TDataSource;
    t_group: TADODataSet;
    t_groupid_grp: TIntegerField;
    t_groupname_grp: TStringField;
    ArhivDBP4: TFloatField;
    ArhivDBT4: TFloatField;
    ArhivDBM4: TFloatField;
    ArhivDBV3: TFloatField;
    ArhivDBV4: TFloatField;
    ArhivDBQ1: TFloatField;
    ArhivDBQ2: TFloatField;
    ArhivDBerr_mask: TIntegerField;
    t_buildingOrgVSO: TStringField;
    t_buildingNdogVSO: TStringField;
    aktdbzavod_num: TStringField;
    DieDatazavod_num: TStringField;
    GVQualDBzavod_num: TStringField;
    readjurn: TADODataSet;
    readjurn1: TRxMemoryData;
    readjurn1sys1: TWordField;
    readjurn1Addr: TStringField;
    readjurn1id_cnt: TIntegerField;
    readjurn1model: TStringField;
    readjurn1zavod_num: TStringField;
    readjurn1n_state: TWordField;
    readjurn1n_param: TWordField;
    readjurn1DatePoslMon: TDateTimeField;
    readjurn1n_state2: TWordField;
    readjurn1EndDate: TDateTimeField;
    readjurn1chk: TBooleanField;
    readjurn1idrec: TIntegerField;
    readjurn1idrec1: TIntegerField;
    readjurn1end1: TBooleanField;
    readjurn1zn1: TFloatField;
    DSReadJurn: TDataSource;
    ds_spr_obj: TDataSource;
    spr_obj: TADODataSet;
    spr_distkod_okato: TStringField;
    procedure tdspcounterAfterPost(DataSet: TDataSet);
    procedure dsCTPDataChange(Sender: TObject; Field: TField);
    procedure tCTPBeforePost(DataSet: TDataSet);
    procedure DataSource9DataChange(Sender: TObject; Field: TField);
    procedure tdspcounterBeforePost(DataSet: TDataSet);
    procedure t_buildingBeforePost(DataSet: TDataSet);
    procedure t_buildingPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure tCTPPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure t_counterPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure menuitdridex2Click(Sender: TObject);
    procedure tizmkAfterPost(DataSet: TDataSet);
    procedure mnuGrafClick(Sender: TObject);
    procedure aChartAutoMashtabClick(Sender: TObject);
    procedure aChartMaxClick(Sender: TObject);
    procedure aChartMinClick(Sender: TObject);
    procedure dsBuildingDataChange(Sender: TObject; Field: TField);
    procedure PMenuChartPopup(Sender: TObject);
    procedure ADODataSet2AfterInsert(DataSet: TDataSet);
    procedure ADODataSet2BeforePost(DataSet: TDataSet);
    procedure t_sobkspdAfterInsert(DataSet: TDataSet);
    procedure t_sobkspdBeforePost(DataSet: TDataSet);
    procedure t_kspdBeforePost(DataSet: TDataSet);
    procedure t_eldomAfterInsert(DataSet: TDataSet);
    procedure t_eldomAfterScroll(DataSet: TDataSet);
    procedure t_eldomBeforePost(DataSet: TDataSet);
    function tmpFormulaGetExternalData(AName: String; var AData: Real;
      var SData: String): Boolean;
    procedure ADOConnection1ExecuteComplete(Connection: TADOConnection;
      RecordsAffected: Integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure t_groupAfterInsert(DataSet: TDataSet);
    procedure spr_orgAfterInsert(DataSet: TDataSet);
    procedure spr_objAfterInsert(DataSet: TDataSet);
    procedure spr_distAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    LoadMess:TStringList;
    countdom: word;
    countkv: word;
    LastReadTime,hashBD: DWORD;
    keyfilename: string;
    UserStatus: byte;  // 0-админ 1- инженер Дез 2- Диспетчер
    UserFullName: string;
    isdemov: boolean;
    username: string; // имя пользователя
    sConString: string;
    oblach: boolean;
    SQLusername,SQLUserPwd,SQLServer,SQLBaseName: string;
    DBGridEhForPrintExp: TDBGrideh;
    function CreateOPCPath(numcounter, idline: integer): string;
    function SendToInBaza(Cmd:byte;DopParam:longint):boolean;
    function SendToInBazaCmd(Cmd: byte): boolean;
    function GetStrKvartir(id_apart: integer): string;
    function IsKvartirPU(id_counter: integer): integer;
  end;

const NamTablesArhiv: array[0..5] of string =('t_monitor','t_Hour','t_day','t_month','t_year','t_error');
      Typezapis: array[0..69] of string =('mon','h','d','m','year','balvs','balq','analt','jorn','analtd',
                                          'vod_h','vod_d','vod_m','vod_hd','vod_dd','vod_md','tepd_h',
                                          'tepd_d','tepd_m','sob','allsb','svh_h','svh_d','svh_m',
                                          'an_co','an_c1','an_co','an_c1','akt','qgv','30','31','32','dbf',
                                          'qgva','35','apartm','37','38','39','40','41','trab','csv','pogr',
                                          '45','46','47','48','49','50','51','52','53','54','55','56','57','58',
                                          '59','60','61','62','63','64','65','66','67','68','69');
//35 - Суточные отчеты оптом
// 46,47,48 - Месячный анализ ОТП/ХВС/ГВС
// 49 - поквартирный по квартире
// 50 - ресурсопотребление по диспетчерской
// 51 - выгрузка поквартирки в dbf
// 52,53 - акты по поквартирному  - ХВС / ГВС
// 54 -Тест данных по поквартирному
// 55 -Выгрузка поквартирки в АСУ
// 56,57,58 - Час/Сут/Мес Электропотр. по счетчику
// 59,60,61 - Час/Сут/Мес Электропотр. по дому
// 62 - Класс энергоэффективности
// 63 - анализ постоянства параметров
// 64 - просмотр событий по контактам
// 65 - сводный акт 2
// 66 -  поквартирный для ОТП
// 67 - спецотчеты
// 68 - выгрузка в xml
// 69 - справка для ВСО

      Colnameofobject: array[0..3] of string =('id_counter','id_builing','id_ctp','id_ctp');
// для всей карты id_ctp=-1
      OthetNamevar: array[0..4] of string=('44_47','41_44','38_41','38','All');
      MaxTZonresurs=4;
      MaxCountresurs=6;
      nameres: array[1..6] of string[3]=('hvs','gvs','el_','gaz','Qot','Qgv');
h_tbl: array [0..54] of BYTE=(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0,
              0,10,11,12,13,14,15, 0, 0, 0, 0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
              0,10,11,12,13,14,15);

// Наружный строительный объем V, куб. м
kubarr: array[0..39] of word=
(100,200,300,400,500,600,700,800,900,1000,1100,1200,1300,1400,1500,1700,
2000,2500,3000,3500,4000,4500,5000,6000,7000,8000,9000,10000,11000,
12000,13000,14000,15000,20000,25000,30000,35000,40000,45000,50000);

// Удельная отопительная характеристика q, Ккал/(м3*оС)
// для домов постройки до 1958г. Значения разделить на 100
g1958: array[0..39] of byte=
(74,66,62,60,58,56,54,53,52,51,50,49,48,47,47,46,45,44,43,42,40,39,38,
37,36,35,34,33,32,31,30,30,29,28,28,28,28,27,27,26);

// Удельная отопительная характеристика q, Ккал/(м3*оС)
// для домов постройки после 1958г. Значения разделить на 100
gafter1958: array[0..39] of byte=
(92,82,78,74,71,69,68,67,66,65,62,60,59,58,57,55,53,52,50,48,47,46,45,
43,42,41,40,39,38,38,37,37,37,37,37,36,35,35,34,34);
MAX_ERROR=127;

// набор ключевых слов, используемых в отчетах
 keywords: array[0..7] of string=('counter','address','t1grf','start','end',
 'model','version','ctp');
//                             0    1    2    3    4    5    6    7    8    9    10   11   12   13
 npol:array[0..13] of string=('ta','t1','t2','t3','p1','p2','p3','m1','m2','m3','v1','v2','q','Twork');
 npol1:array[0..13] of string=('ta','t1','t2','t3','p1','p2','p3','m1','m2','m3','v1','v2','q1','tw');
 vozmper:array[0..19] of word=(
     (ord('t') shl 8)+ord('a'),(ord('t') shl 8)+ord('1'),(ord('t') shl 8)+ord('2'),  // 0 ,1 ,2
     (ord('t') shl 8)+ord('3'),(ord('p') shl 8)+ord('1'),(ord('p') shl 8)+ord('2'),  // 3 ,4 ,5
     (ord('p') shl 8)+ord('3'),(ord('m') shl 8)+ord('1'),(ord('m') shl 8)+ord('2'),  // 6 ,7 ,8
     (ord('m') shl 8)+ord('3'),(ord('v') shl 8)+ord('1'),(ord('v') shl 8)+ord('2'),  // 9 ,10 ,11
     (ord('q') shl 8)+ord('1'),(ord('t') shl 8)+ord('w'),(ord('d') shl 8)+ord('t'),  // 12 ,13 ,14 'q1','tw','dt'
     (ord('d') shl 8)+ord('p'),(ord('d') shl 8)+ord('v'),(ord('d') shl 8)+ord('m'),  // 15 ,16 ,17 'dP','dV','dM'
     (ord('d') shl 8)+ord('a'),(ord('n') shl 8)+ord('p')                             // 18, 19
     );

snameerrorSPT943: array[0..21] of string=(
'Разряд батареи U<3,2В',
'Iсумм датчиков v >100мА',
'Изм-е сигнала на дискр. входе',
'tхв вне диапазона 0-176 °C',
'Выход контр-го пар-ра за УН:УВ',
'НС05','НС06','НС07', // 5,6,7
'P1 вне диапазона 0-1,1*ВП1',
'P2 вне диапазона 0-1,1*ВП2',
't1 вне диапазона 0-176 °C',
't2 вне диапазона 0-176 °C',
't3 вне диапазона 0-176 °C',
'Расход G1>Gверх1',
'Расход 0<G1<Gнижн1',
'Расход G2>Gверх2',
'Расход 0<G2<Gнижн2',
'Расход G3>Gверх3',
'Расход 0<G3<Gнижн3',
'(М1ч-М2ч)<(-НМ)*М1ч',
'Q за час <0',
'(М1ч-М2ч)<0');

type
      PInfoPUFormula=^TInfoPUFormula;
      TInfoPUFormula=record
             id_cnt: dword;
             model: byte;
             countpol: byte;
             numtw: byte;
             idx: array[0..13] of byte;
             nompole: array[0..13] of byte;
             nomCOLzapr:array[0..13] of byte;
//             valzn: array[0..13] of single;
           end;

var DM: TDM;
    ArrayTnv: array of single; // массив среднесут. температур
    regkey: array[0..9] of byte;
    TekNumGr,TekNumOrg,TekNumLvl,TekNumRaion: integer;
    langList: TStrings;
    nameerror: array[0..MAX_ERROR] of string;
    NamTypeArhiv: array[0..3] of string;
    NamTypeArhiv1: array[0..3] of string;
    NamTypeArhiv2: array[0..3] of string;
    photoshema: array [0..1] of string;
    systname: array [1..32] of string;
    naimp: array [0..6] of string;
    abszn: array[1..19] of single;
    nameresrodit: array[1..MaxCountresurs] of string;
    PUFormulaList:TIntegerAssociationList;

function ScanPort(Address:String;iPort:integer):boolean;
procedure CalculateMaxAxis(MonChart:TDBChart;Percent:single);
function  ReadPeriod(IdTypeZap,NumObject,TypeObject:integer; var Date1,Date2:TDateTime):boolean;
procedure SavePeriod(Date1,Date2:TDateTime;IdTypeZap,NumObject,TypeObject:integer);
procedure DelPeriod(TypeZap:string;NumObject,TypeObject:integer);
function  CurrentDataYPerX(AChart:TDBChart;Graph_X:integer;var DataArr:array of single):String;
function  CurrentStateYPerX(AChart:TChart;Graph_X:integer;var DataArr:array of boolean):String;
function  ChangeColor(aAColor: TColor; Up: boolean): TColor;
procedure DeleteDataCounter(Num_counter: string;ToDate:TDateTime);
procedure ExportDataCounter(Filename:String;Num_counter:integer; FromDate,ToDate: TDateTime);
procedure ExportRichEdit(Filename, Title:String; RichEd: TRichEdit);
function  ServerNow: TDateTime;
procedure DeleteLeftDataCounter;
procedure PrintChart(Chart: TChart);
function StrIsStartingFrom( Str, Pattern: PChar ): Boolean;
procedure GetIdTranzitDom(OldCount: integer; idTranzitDom:TList;countersys: integer);
procedure GetPredMonth(var Date1:TdateTime; var Date2: TDateTime);
procedure GetReportStruc;
function GetTnv(Date1,Date2: TDateTime): boolean;
function GetPoslDayofMonth(sdate: TDateTime):DWORD;
function GetFileSize(FileName: string): Longint;
function TestHash(passwd: string; Hsh: THash):boolean;
procedure CalcHashofPasswd(passwd: string; var Hsh: THash);
procedure SaveUserBase(UserD: TRxMemoryData);
function ReadUserBase(UserD: TRxMemoryData):boolean;
function FindPrevSaveActs(mode:byte): byte; // кол-во ранее сохраненных актов
function WinExecAndWait32(FileName:String; Visibility : integer):integer;
function IndexOfCharp( S : PChar; Chr : Char ) : Integer;
function  SQLDate(tmpDate: TDate): string;
function  RegApp1:boolean;
function  ReadLicKey: boolean;
function  DecryptStr(s: string):string;
procedure StrToClipbrd(StrValue: string);
function RazborFunction(s: string; var TmpList1: TIntegerAssociationList): dword;
procedure DestroyPUFormulaList(Full: boolean; TmpList1: TIntegerAssociationList);
function CreateZaprosFormula(type_arh: byte;TmpList1: TIntegerAssociationList; var newzap: string): string;

implementation

uses const_lang,MonitorFrm, BaseFrm, SoundFrm, printers, izmk, Utilites, Forms, winsock2,
  ProgressFrm;

{$R *.dfm}

var
key_pi4: array[0..31] of byte=
($DE,$94,$F9,$55,$5F,$D6,$2B,$23,$04,$94,$4B,$3E,$6E,$B4,$95,$E4,
 $BC,$AE,$79,$85,$5E,$C4,$3D,$C2,$AC,$94,$7C,$0B,$E4,$FB,$D2,$18);

l_key: array[0..131] of dword;
IV, CV: array[0..15] of byte;


procedure TDM.DataModuleCreate(Sender: TObject);
var s,s2: string;
    F: TextFile;
    pos1,zn: dword;
begin
{$ifdef myDBG} OutputDebugString('DataModuleCreate in'); {$endif}
  PUFormulaList:=TIntegerAssociationList.Create(10);
  LastReadTime:=0;
  SQLusername:='';
  SQLUserPwd:='';
  SQLServer:='';
  SQLBaseName:='';
  isdemov:=false;
 LoadMess:=TStringList.Create;
  langList:=Nil;
  langList:=TStringList.Create;
  s:=Application.ExeName;
  s:=ChangeFileExt(s,'.lng');
  langList.Add('');
  for pos1:=1 to maxstridx do langList.Add(langdef[pos1]);
  if FileExists(s) then
   begin
     AssignFile(F,s);
     reset(f);
     while (not eof(f)) do
      begin
        readln(f,s2);
        try
        if (s2[1]>#47) and (s2[1]<#58) then
         begin
           pos1:=G_CharPos('=',s2,2);
           if pos1>0 then
            begin
              if (G_StrTo_LongWord(Q_CopyLeft(s2,pos1-1),zn)) and (zn<=maxstridx) then langList[zn]:=Q_CopyFrom(s2,pos1+1);
            end;
         end;
         except
         end;
      end;
     closefile(f);
   end;
  for pos1:=0 to 5 do LayersStdName[pos1]:=langList[17+pos1];
  for pos1:=0 to 3 do NameScachok[pos1]:=langList[23+pos1];
  Application.Title:=langList[15]+' '+langList[10];
//ADODataSet6id_counter.DisplayLabel:=langList[671];
//ADODataSet6building_addr.DisplayLabel:=langList[295];
for pos1:=1 to 16 do tLine.Fields[pos1].DisplayLabel:=langList[671+pos1];
tizmkmodel.DisplayLabel:=langList[673];
tizmkid_counter.DisplayLabel:=langList[688];
tizmkizmkanal.DisplayLabel:=langList[689];
tizmkizm_vel.DisplayLabel:=langList[690];
tizmktypepp.DisplayLabel:=langList[691];
tizmknumpp.DisplayLabel:=langList[692];
tizmkInterval.DisplayLabel:=langList[693];
tizmkDateposlp.DisplayLabel:=langList[694];
tizmkdateslp.DisplayLabel:=langList[695];
tizmkPrim.DisplayLabel:=langList[696];
tizmkOperator.DisplayLabel:=langList[686];
tizmkchange_date.DisplayLabel:=langList[685];
SaveDialog1.Title:=langList[697];
menuitdridex1.Caption:=langList[698];
menuitdridex2.Caption:=langList[699];
aChartAutoMashtab.Caption:=langList[700];
aChartMax.Caption:=langList[701];
aChartMin.Caption:=langList[702];
N1.Caption:=langList[703];
N2.Caption:=langList[704];
tPotrebitelid_potreb.DisplayLabel:=langList[705];
tPotrebiteltypep.DisplayLabel:=langList[706];
tPotrebitelid_building.DisplayLabel:=langList[707];
tPotrebitelQotp.DisplayLabel:=langList[285];
tPotrebitelQgvs.DisplayLabel:=langList[284];
tPotrebitelVgvs.DisplayLabel:=langList[288];
tPotrebitelMgvs.DisplayLabel:=langList[283];
tPotrebitelVxvs.DisplayLabel:=langList[289];
tPotrebitelOperator.DisplayLabel:=langList[686];
tPotrebitelchange_date.DisplayLabel:=langList[685];
aktdbAddress.DisplayLabel:=langList[295];
aktdbid_counter.DisplayLabel:=langList[708];
aktdbType.DisplayLabel:=langList[709];
aktdbNorm1.DisplayLabel:=langList[710];
aktdbNorm2.DisplayLabel:=langList[711];
aktdbFaktV.DisplayLabel:=langList[712];
aktdbFaktQ.DisplayLabel:=langList[713];
aktdbDiffV.DisplayLabel:=langList[714];
aktdbDiffQ.DisplayLabel:=langList[715];
aktdbPersV.DisplayLabel:=langList[716];
aktdbPersQ.DisplayLabel:=langList[717];
aktdbsidcounters.DisplayLabel:=langList[718];
aktdbsCTP.DisplayLabel:=langList[18];
aktdbGp_ukrf.DisplayLabel:=langList[719];
aktdbGp_df.DisplayLabel:=langList[720];
aktdbdt_grf.DisplayLabel:=langList[721];
aktdbsd.DisplayLabel:=langList[487];
aktdbfloors.DisplayLabel:=langList[723];
aktdbseria.DisplayLabel:=langList[575];
aktdbbyear.DisplayLabel:=langList[331];
aktdbIznos.DisplayLabel:=langList[724];
aktdbKub.DisplayLabel:=langList[725];
t_dc_cntid_building.DisplayLabel:=langList[726];
t_dc_cntstate.DisplayLabel:=langList[727];
t_dc_cntcomments.DisplayLabel:=langList[390];
UserDBlogin.DisplayLabel:=langList[728];
UserDBName.DisplayLabel:=langList[729];
UserDBdostup.DisplayLabel:=langList[730];
UserDBdropp.DisplayLabel:=langList[731];
DBNepolnAtribAddr.DisplayLabel:=langList[295];
DBNepolnAtribKub.DisplayLabel:=langList[732];
DBNepolnAtribYearPostr.DisplayLabel:=langList[331];
DBNepolnAtribWot.DisplayLabel:=langList[414];
aktdbkvAddress.DisplayLabel:=langList[295];
dbkv.UserName:=langList[733];
frxReport2.ReportOptions.Name:=langList[734];
frxReport1.ReportOptions.Name:=langList[735];
nameerror[0]:=langList[749];
nameerror[1]:=langList[750];
for pos1:=2 to 29 do nameerror[pos1]:='';
for pos1:=30 to 33 do nameerror[pos1]:=langList[751-30+pos1];
for pos1:=34 to 39 do nameerror[pos1]:='';
for pos1:=40 to 42 do nameerror[pos1]:=langList[755-40+pos1];
for pos1:=43 to 47 do nameerror[pos1]:='';
for pos1:=48 to 108 do nameerror[pos1]:=langList[758-48+pos1];
for pos1:=109 to 113 do nameerror[pos1]:='';
for pos1:=114 to 127 do nameerror[pos1]:=langList[819-114+pos1];
naimp[0]:='t1>%d'#13+langList[844];
naimp[1]:='47<t1<%d'#13+langList[845];
naimp[2]:='44<t1<47';
naimp[3]:='41<t1<44';
naimp[4]:='38<t1<41';
naimp[5]:='t1<38'+langList[846];
naimp[6]:=langList[847];
for pos1:=0 to 3 do
 begin
   NamTypeArhiv[pos1]:=langList[833+pos1];
   NamTypeArhiv1[pos1]:=langList[837+pos1];
   NamTypeArhiv2[pos1]:=langList[841+pos1];
 end;
photoshema[0]:=langList[646];
photoshema[1]:=langList[610];

systname[1]:=langList[165];
systname[2]:=langList[166];
systname[3]:='';
systname[4]:=langList[669];
systname[5]:=langList[854];
systname[6]:=langList[855];
systname[8]:=langList[1290];
systname[16]:=langList[1291];
systname[32]:='Вентиляция';

for pos1:=1 to 6 do nameresrodit[pos1]:=langList[847+pos1];

{$ifdef myDBG} OutputDebugString('DataModuleCreate out'); {$endif}
end;

function GetFileSize(FileName: string): Longint;
var SearchRec: TSearchRec;
begin
  if FindFirst(FileName, faAnyFile, SearchRec) = 0 then  Result:=SearchRec.Size
                                                   else  Result:=-1;       {возвращаем ошибку, это может быть число меньше нуля}
end;

function ReadLicKey: boolean;
const h_tbl: array [0..54] of BYTE=(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0,
              0,10,11,12,13,14,15, 0, 0, 0, 0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
              0,10,11,12,13,14,15);
{$ifdef DEMOV}
      nameRegParam='gisc';
{$else}
      nameRegParam='gis';
{$endif}
var Reg: TRegistry;
    s: string;
    i1,i2: byte;
begin
    Reg := TRegistry.Create;
    s:='';
    try
     Reg.Access:=KEY_READ;
     Reg.RootKey:= HKEY_LOCAL_MACHINE;
     if Reg.OpenKey('\Software\TBN', False) then
      begin
        s:=Reg.ReadString(nameRegParam);
        Reg.CloseKey;
      end;
    finally
     Reg.Free;
    end;
    Result:=false;
    if (s='') or (length(s)<>20) then exit;
    for i2:=1 to 20 do
     begin
       i1:=ord(s[i2]);
       if ((i1<$30) or ((i1>$39) and (i1<$41)) or
        ((i1>$46) and (i1<$61)) or (i1>$66)) then exit;
     end;
    for i2:=0 to 9 do
     begin
       i1:=(i2 shl 1)+1;
       regkey[i2]:=(h_tbl[ord(s[i1])-$30] shl 4)+h_tbl[ord(s[i1+1])-$30];
     end;
    Result:=true;
end;

procedure DelPeriod(TypeZap:string;NumObject,TypeObject:integer);
begin
  if TypeObject=3 then NumObject:=-1; // для всей карты
  DM.tempcmd.CommandText:='delete from t_save_time00 where '+
   colnameofobject[TypeObject]+'='+inttostr(NumObject)+' and vtemp='+#39+TypeZap+#39;
  DM.tempcmd.Execute;
end;

procedure SavePeriod(Date1,Date2:TDateTime;IdTypeZap,NumObject,TypeObject:integer);
var lprd: integer; {длина периода}
begin
  if TypeObject=3 then NumObject:=-1; // для всей карты
  DelPeriod(TypeZapis[IdTypeZap],NumObject,TypeObject);
  case IdTypeZap of
   0: if Date2=0 then lprd:=0
        else lprd:=round((Date2-Date1)*24); //lprd:=0; // Для мониторинга нет конечной даты
   1,10,13,16,21,40,44,56,59: lprd:=round((Date2-Date1)*24);
   2,5..9,11,14,17,22,24..39,41,42,43,45..55,57,60,62..69:   lprd:=trunc(Date2-Date1);
   3,12,15,18,19,20,23,58,61:   lprd:=12;
  end; {case}
  DM.tempcmd.CommandText:='INSERT INTO t_save_time00 ('+colnameofobject[TypeObject]+
   ',date_time, vtemp,l_prd) VALUES ('+inttostr(NumObject)+','+#39+
   FormatDateTime('yyyy-mm-dd hh:00:00',Date1)+#39+','+#39+TypeZapis[IdTypeZap]+#39+','+inttostr(lprd)+')';
  DM.tempcmd.Execute;
end;

function ReadPeriod(IdTypeZap,NumObject,TypeObject:integer; var Date1,Date2:TDateTime):boolean;
//const s: string='select max(DATEADD(hour,CONVERT(INT,SUBSTRING(date_time,12,2)),CONVERT(DATETIME,CONVERT(CHAR(10),date_time),120))) from ';
begin
  if TypeObject=3 then NumObject:=-1; // для всей карты
  DM.tmpDataSet.Close;
  DM.tmpDataSet.CommandText:='select CONVERT(DATETIME,date_time,120), l_prd from t_save_time00 where '+
   colnameofobject[TypeObject]+'='+inttostr(NumObject)+' and vtemp='+#39+typezapis[IdTypeZap]+#39;
  DM.tmpDataSet.Open;
  Result:=(DM.tmpDataSet.RecordCount>0); {Нашли запись}
  if DM.tmpDataSet.RecordCount>0 then
   begin
     Date1:=DM.tmpDataSet.Fields[0].AsDateTime;
     case IdTypeZap of
      0: begin
           if DM.tmpDataSet.Fields[1].AsInteger=0 then
            begin
              Date2:=0;
{              DM.tmpDataSet.Close;
              DM.tmpDataSet.CommandText:='select max(mon_time) from t_monitor where id_counter='+
              inttostr(NumObject);
              DM.tmpDataSet.Open;
              Date2:=DM.tmpDataSet.Fields[0].AsDateTime; }
            end else Date2:=Date1+DM.tmpDataSet.Fields[1].AsFloat/24;

         end;
      1,10,13,16,21,40,44,56,59: Date2:=Date1+DM.tmpDataSet.Fields[1].AsFloat/24;
   2,5..9,11,14,17,22,24..39,41,42,43,45..55,57,60,62..69: Date2:=Date1+DM.tmpDataSet.Fields[1].AsFloat;
        3,12,15,18,23,58,61: Date2:=Date1+366;
             19,20: Date2:=Date1;
     end; {case}
   end                           else
   begin  { Значения по умолчанию ПОКА ТОЛЬКО ДЛЯ СЧЕТЧИКОВ И ДОМОВ !!!}
     if IdTypeZap in [0..4,10..18] then
      begin
        DM.tmpDataSet.Close;
        if IdTypeZap > 15 then IdTypeZap := IdTypeZap - 15
         else if IdTypeZap > 12 then IdTypeZap := IdTypeZap - 12
         else if IdTypeZap > 9 then IdTypeZap := IdTypeZap - 9;
        if IdTypeZap = 0 then
         DM.tmpDataSet.CommandText:='select max(mon_time) from t_monitor where id_counter='+
          inttostr(NumObject)+' and mon_time<='+#39+FormatDateTime('yyyymmdd hh:nn:ss',ServerNow)+#39
        else
// 05.03.2012
         if TypeObject=0 then
         DM.tmpDataSet.CommandText:='select max(Truedate) from '+
          NamTablesArhiv[IdTypeZap]+' where id_counter='+inttostr(NumObject)+' and Truedate<='+#39+FormatDateTime('yyyymmdd hh:nn:ss',ServerNow)+#39
//         if TypeObject=0 then
//         DM.tmpDataSet.CommandText:=s+
//          NamTablesArhiv[IdTypeZap]+' where id_counter='+inttostr(NumObject)+' and date_time<='+#39+FormatDateTime('yyyy-mm-dd hh:nn:ss',ServerNow)+#39
          else
         DM.tmpDataSet.CommandText:='select max(Truedate) from '+
          NamTablesArhiv[IdTypeZap]+' where id_counter in '+
          '(select id_counter from t_dsp_counter where id_building1='+inttostr(NumObject)+
          ') and Truedate<='+#39+FormatDateTime('yyyymmdd hh:nn:ss',ServerNow)+#39;
        DM.tmpDataSet.Open;
        if DM.tmpDataSet.RecordCount>0 then
         begin
           Date2:=DM.tmpDataSet.Fields[0].AsDateTime;
           case IdTypeZap of
             0,1:   Date1:=Date2-1;
               2: begin Date2:=Date2; Date1:=Date2-30; end;
               3:   Date1:=Date2-366;
           end; {case}
         end;
      end;
   end;
  DM.tmpDataSet.Close;
end;

function CurrentDataYPerX(AChart:TDBChart;Graph_X:integer;var DataArr:array of single):String;
var i,j,MaxLenArr:integer;
    tmpD:Double;
    RealX1,RealX2:integer;//Реальные координаты точек
    Procent:single;//процент отклонения от первой точки
    Delta:integer;
    DeltaY:single;
    Finded:boolean;
    ASIndex:integer;

begin
  for i := 0 to AChart.SeriesCount-1 do
  begin
    ASIndex:=i;
    if AChart.Series[i].Active then break;
  end;

  Finded:=False;
  if AChart.SeriesCount>0 then//Если присутствуют серии
  if (Graph_X>AChart.ChartRect.Left) and (Graph_X<AChart.ChartRect.Right-1) then
  begin
    AChart.Canvas.MoveTo(Graph_X,0);
    AChart.Canvas.LineTo(Graph_X,AChart.Height);
    //Вычислить время по оси Х
    tmpD:=AChart.Series[ASIndex].XScreenToValue(Graph_X);
    result:=DateTimeToStr(tmpD);
    //Вычислить индекс в массиве точек
    //производим поиск по шкале X
    for i := 0 to AChart.Series[ASIndex].XValues.Count-1 do
    begin
      //ищем точки
      if i>0 then
      begin
        RealX1:=AChart.Series[ASIndex].CalcXPosValue(AChart.Series[ASIndex].XValue[i-1]);
        RealX2:=AChart.Series[ASIndex].CalcXPosValue(AChart.Series[ASIndex].XValue[i]);
        Delta:=RealX2-RealX1;
        if Delta>0 then
        Procent:=(Graph_x-RealX1)/Delta;
      end;
      if AChart.Series[ASIndex].XValue[i]>tmpD then
      begin
       Finded:=True;
       break;
      end;
    end;

    if Not Finded then Exit;
    //Предыдущая точка (i-1) следующая точка (i)
    MaxLenArr:=Length(DataArr);
    if i>0 then
    begin
     // Есть точка Y1 & Y2
     for j := 0 to AChart.SeriesCount-1 do
     begin
        if j<MaxLenArr then//Если индекс менее размера массива - заполняем данными
        begin
          if i < AChart.Series[j].Count then
          begin
            //Если i в диапазоне индексов данных
            DeltaY:=AChart.Series[j].YValue[i]-AChart.Series[j].YValue[i-1];
            DataArr[j]:=AChart.Series[j].YValue[i-1]+DeltaY*Procent;
          end
          else begin
            //Если i в диапазоне индексов данных
            if AChart.Series[j].Count>0 then
              DataArr[j]:=AChart.Series[j].YValue[0]
            else
              DataArr[j]:=0;
          end;

        end;
     end;
    end;
  end;

end;

function CurrentStateYPerX(AChart:TChart;Graph_X:integer;var DataArr:array of boolean):String;
var i,j:integer;
    tmpD:Double;
    IndexArr:array of integer;//Массив хранящий (индексы по значений по X)-1 большие текущей срезки
                              //если индексы этих значений больше нуля
                              //иначе нули
begin
  result:='';
  if AChart.SeriesCount>0 then//Если присутствуют серии
  if (Graph_X>AChart.ChartRect.Left) and (Graph_X<AChart.ChartRect.Right-1) then
  begin
    AChart.Canvas.Pen.Width:=1;
    AChart.Canvas.MoveTo(Graph_X,0);
    AChart.Canvas.LineTo(Graph_X,AChart.Height);
    if AChart.SeriesCount=0 then Exit;

    //Вычислить время по оси Х
    tmpD:=AChart.Series[0].XScreenToValue(Graph_X);
    result:=DateTimeToStr(tmpD);

    //Вычислить индекс в массиве точек
    //производим поиск по шкале X
    SetLength(IndexArr,AChart.SeriesCount);//настраиваем длину массива
    for i := 0 to AChart.SeriesCount-1 do
    begin
       IndexArr[i]:=0;
       for j := 0 to AChart.Series[i].XValues.Count-1 do
       begin
          if tmpD<AChart.Series[i].XValue[j] then
          begin
             if j=0 then
                IndexArr[i]:=0
             else
                IndexArr[i]:=j-1;
             break;
          end;
       end;
    end;

    if Length(DataArr) = Length(IndexArr) then
    for i := 0 to AChart.SeriesCount-1 do
      DataArr[i]:=(AChart.Series[i].YValue[IndexArr[i]] = i*10-5);
  end;
end;


procedure CalculateMaxAxis(MonChart:TDBChart;Percent:single);
var i:integer;
    MaxVal,MinVal:single;
begin
  MaxVal:=0; MinVal:=10000;
  if MonChart.SeriesList.Count=0 then Exit;
  for i := 0 to MonChart.SeriesCount-1 do
  begin
    if MonChart.Series[i].Active then
    begin
       if MonChart.SeriesList[i].MaxYValue>MaxVal then
          MaxVal := MonChart.SeriesList[i].MaxYValue;
       if MonChart.SeriesList[i].MinYValue<MinVal then
          MinVal := MonChart.SeriesList[i].MinYValue;
    end;
  end;
  MaxVal:=MaxVal*(1+Percent/100);
  MinVal:=MinVal*(1-Percent/100);
  if MaxVal<=MinVal then
   begin
   end else
   begin
      if MonChart.LeftAxis.Minimum > MaxVal then
      begin
         MonChart.LeftAxis.Minimum:=MinVal;
         MonChart.LeftAxis.Maximum:=MaxVal;
      end
      else begin
         MonChart.LeftAxis.Maximum:=MaxVal;
         MonChart.LeftAxis.Minimum:=MinVal;
      end;
   end;
end;


procedure TDM.tdspcounterAfterPost(DataSet: TDataSet);
begin
 //если этот счетчик имеет текущий ID, то
{ if BaseForm.MapCtrl1.CurrentID = ADODataSet9.FieldByName('id_counter').asInteger then
 begin
   //Если активный слой - приборы
   if BaseForm.MapCtrl1.Map.Layers.Active.UserName=cPribor then
   begin
      BaseForm.MapCtrl1.Map.Layers.Active.Elements.Item[BaseForm.MapCtrl1.CurrentID].Set_type_(
      ADODataSet9.FieldByName('counter_sys1').asInteger);
      BaseForm.MapCtrl1.Refresh;
   end;
 end;
 }
end;

function ChangeColor(aAColor:TColor;Up:boolean):TColor;
const x=$40;
var tmpi:longint;
    xxx:array[0..3] of byte absolute tmpI;
begin
  tmpi:=aaColor;
  if Up then
  begin
    if xxx[0]<=($FF-x) then xxx[0]:=xxx[0]+x
                       else xxx[0]:=$ff;
    if xxx[1]<=($FF-x) then xxx[1]:=xxx[1]+x
                       else xxx[1]:=$ff;
    if xxx[2]<=($FF-x) then xxx[2]:=xxx[2]+x
                       else xxx[2]:=$ff;
  end
  else
  begin
    if xxx[0]>=x then xxx[0]:=xxx[0]-x
                 else xxx[0]:=0;
    if xxx[1]>=x then xxx[1]:=xxx[1]-x
                 else xxx[1]:=0;
    if xxx[2]>=x then xxx[2]:=xxx[2]-x
                 else xxx[2]:=0;
  end;
  result:=TColor(tmpi);

end;

procedure TDM.dsCTPDataChange(Sender: TObject; Field: TField);
begin
  if baseForm.EditBase.Down then
  baseForm.SaveBtn_ctp.Enabled:=not tCTP.FieldByName('ctp_name').IsNull;
end;

procedure TDM.tCTPBeforePost(DataSet: TDataSet);
begin
   if tCTP.FieldByName('ctp_name').IsNull or
      tCTP.FieldByName('change_date').IsNull or
      tCTP.FieldByName('operator').IsNull or
      tCTP.FieldByName('id_ctp').IsNull or
      (tCTP.FieldByName('id_ctp').AsInteger<1)
      then
       begin
         tCTP.Cancel;
         Abort;
       end;
end;

procedure TDM.DataSource9DataChange(Sender: TObject; Field: TField);
begin
  baseForm.SaveBtn_pribor.Enabled:=not tdspcounter.FieldByName('counter_sys1').IsNull;
end;

procedure TDM.tdspcounterBeforePost(DataSet: TDataSet);
begin
   if tdspcounter.FieldByName('counter_sys1').IsNull or
      tdspcounter.FieldByName('counter_sys').IsNull or
      tdspcounter.FieldByName('id_counter').IsNull or
      tdspcounter.FieldByName('change_date').IsNull or
      tdspcounter.FieldByName('operator').IsNull or
      tdspcounter.FieldByName('id_dsp_counter').IsNull
      then
       begin
         tdspcounter.Cancel;
         Abort;
       end;
end;

procedure TDM.t_buildingBeforePost(DataSet: TDataSet);
begin
   if t_building.FieldByName('building_addr').IsNull or
      t_building.FieldByName('id_building').IsNull or
      t_building.FieldByName('change_date').IsNull or
      t_building.FieldByName('operator').IsNull or
       (t_building.FieldByName('id_building').AsInteger<1) or
      t_building.FieldByName('id_street').IsNull then
       begin
         t_building.Cancel;
         Abort;
       end;
end;

procedure TDM.t_buildingPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  MessageBox(Application.Handle,PChar(langList[737]+t_building.FieldByName('building_addr').AsString+
   langList[738]+#13#10+langList[736]),PChar(langList[1]),mb_Ok or mb_IconHand or mb_DefButton1);
  t_building.Cancel;
  abort;
end;

procedure TDM.tCTPPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  MessageBox(Application.Handle,PChar(langList[739]+#13#10+langList[736]),PChar(langList[1]),mb_Ok or mb_IconHand or mb_DefButton1);
  tCTP.Cancel;
  abort;
end;

function ServerNow: TDateTime;
begin
  DM.tmpDataSet1.close;
  DM.tmpDataSet1.CommandText:='select Getdate()';
  DM.tmpDataSet1.open;
  Result:=DM.tmpDataSet1.Fields[0].AsDateTime;
  DM.tmpDataSet1.close;
end;

procedure DeleteDataCounter(Num_counter: string;ToDate:TDateTime);
var i: byte;
    zapr1: string;
begin
  zapr1:=' WHERE id_counter='+Num_counter;
  if ToDate<>0 then zapr1:=zapr1+' and date_time<'+
   #39+FormatDateTime('yyyy-mm-dd ',ToDate)+'00:00:00'+#39;
  DM.tempcmd.CommandText:='';
  for i:= 5 downto 1 do
   DM.tempcmd.CommandText:=DM.tempcmd.CommandText+'delete from '+NamTablesArhiv[i]+zapr1;
  DM.tempcmd.Execute;
end;

// Удаляет из архивов все записи с датой > тек. даты сервера
procedure DeleteLeftDataCounter;
var i: byte;
    zapr1: string;
begin
  zapr1:=' where date_time>'+#39+FormatDateTime('yyyy-mm-dd hh:nn:ss',ServerNow)+#39;
  DM.tempcmd.CommandText:='';
  for i:= 5 downto 1 do
   DM.tempcmd.CommandText:=DM.tempcmd.CommandText+'delete from '+NamTablesArhiv[i]+zapr1;
  DM.tempcmd.Execute;
  MessageBox(Application.Handle,PChar(langList[740]),PChar(langList[2]),mb_Ok or mb_IconInformation or mb_DefButton1)
end;

procedure ExportDataCounter(Filename:String;Num_counter:integer; FromDate,ToDate: TDateTime);
var i,k: byte;
    j:integer;
    zapr1,zapr2,zapr3,Nums_counter: string;
    tmpArhrec: tmpExpArxiveRec;
    tmpErrrec: tmpExpErrorRec;
    rec: TMyExport;
begin
  rec:=TMyExport.Create;
  Nums_counter:=InttoStr(Num_counter);
  zapr3:='';
  if FromDate<>0 then
   zapr3:=' and date_time >= '+ #39+FormatDateTime('yyyy-mm-dd ',FromDate)+'00:00:00'+#39;
  if ToDate<>0 then
   zapr3:=zapr3+' and date_time <= '+ #39+FormatDateTime('yyyy-mm-dd ',ToDate+1)+'00:00:00'+#39;
  zapr1:=' WHERE id_counter='+NumS_counter;
  zapr2:=zapr1+zapr3+' ORDER BY id_record';
  for i:= 4 downto 1 do
   begin
     DM.tmpDataSet.close;
     DM.tmpDataSet.CommandText:='SELECT id_counter, date_time, n_record, ta, p1, p2, p3, t1, t2, t3, m1, m2, '+
        'm3, v1, v2, q, Twork, hash, id_model, read_time, version, id_record FROM '+
        NamTablesArhiv[i]+zapr2;
     DM.tmpDataSet.open;
     Rec.RecCount[TehpTypeArx(i-1)]:=DM.tmpDataSet.RecordCount;
     DM.tmpDataSet.first;
     for j:=1 to DM.tmpDataSet.RecordCount do
      begin
        tmpArhrec.Date:=DM.tmpDataSet.Fields[1].AsString;
        tmpArhrec.RecNumber:=DM.tmpDataSet.Fields[2].AsInteger;
        tmpArhrec.Model:=DM.tmpDataSet.Fields[18].AsInteger;
        tmpArhrec.ReadDate:=DM.tmpDataSet.Fields[19].AsDateTime;
        tmpArhrec.Version:=DM.tmpDataSet.Fields[20].AsString;
        for k:=0 to 13 do
         tmpArhrec.DataBody[k]:=DM.tmpDataSet.Fields[k+3].AsFloat;
        Rec.SetRec(TehpTypeArx(i-1),j,tmpArhrec);
        DM.tmpDataSet.Next;
      end;
   end;
  DM.tmpDataSet.close;
  DM.tmpDataSet.CommandText:='SELECT date_time, n_record, error_num, hash, id_counter, id_model FROM t_error '+zapr2;
  DM.tmpDataSet.open;
  Rec.ERecCount:=DM.tmpDataSet.RecordCount;
  DM.tmpDataSet.first;
  for j:=1 to DM.tmpDataSet.RecordCount do
    begin
        tmperrrec.Date:=DM.tmpDataSet.Fields[0].AsString;
        tmperrrec.RecNumber:=DM.tmpDataSet.Fields[1].AsInteger;
        tmperrrec.ErrorNumber:=(DM.tmpDataSet.Fields[2].AsInteger and $7F);
        tmperrrec.StartError:=ord(DM.tmpDataSet.Fields[2].AsInteger>127);
        tmperrrec.Model:=DM.tmpDataSet.Fields[5].AsInteger;
        Rec.Errors[j]:=tmperrrec;
        DM.tmpDataSet.Next;
      end;
  DM.tmpDataSet.close;
{ DM.tmpDataSet.CommandText:='SELECT id_parameter, val, read_time FROM t_parameters'+zapr1;
  DM.tmpDataSet.open;
  Rec.PRecCount:=DM.tmpDataSet.RecordCount;
  DM.tmpDataSet.first;
  for j:=1 to DM.tmpDataSet.RecordCount do
    begin
      tmpparrec.IDParam:=DM.tmpDataSet.Fields[0].AsInteger;
      tmpparrec.Value:=DM.tmpDataSet.Fields[1].AsFloat;
      tmpparrec.ReadTime:=DM.tmpDataSet.Fields[2].AsDateTime;
      Rec.Params[j]:=tmpparrec;
      DM.tmpDataSet.Next;
    end;
  DM.tmpDataSet.close;
  }
  DM.tmpDataSet.CommandText:='SELECT id_model, version FROM t_counter'+zapr1;
  DM.tmpDataSet.open;
  Rec.Save(FileName,Num_counter,DM.tmpDataSet.Fields[0].AsInteger,
  DM.tmpDataSet.Fields[1].AsString);
  rec.free;
end;

procedure ExportRichEdit(Filename, Title:String; RichEd: TRichEdit);
var lst :TextFile;
    i:integer;
begin
//DM.SaveDialog2.FileName := 'ЦТП 123/234';//Filename;
  DM.SaveDialog2.Title:=Title;
  if DM.Savedialog2.Execute then
    begin
      case DM.SaveDialog2.FilterIndex of
        1: begin
             AssignFile(lst,ChangeFileExt(DM.SaveDialog2.FileName,'.txt'));
             Rewrite(lst);
             for i:=0 to RichEd.Lines.Count-1 do
              writeln(lst,RichEd.Lines[i]);
             System.CloseFile(lst);
            end;
        2: begin
             RichEd.Lines.SaveToFile(ChangeFileExt(DM.SaveDialog2.FileName,'.rtf'));
           end;
        3: begin
             MessageBox(Application.Handle,PChar(langList[741]),PChar(langList[2]),mb_Ok or mb_IconInformation or mb_DefButton1);
           end;
      end;
    end;
end;

function Min(const A, B: Single): Single;
begin
  if A < B then
    Result := A
  else
    Result := B;
end;

procedure PrintChart(Chart: TChart);
var Meta      :TMetafile;
    k: single;
    ARect: TRect;
    BrColor: TColor;
    i,j,wid,he: integer;
begin
  if DM.PrinterSetupDialog1.Execute then
   begin
     if Printer.Orientation=poPortrait then
      begin
        i:=(Printer.PageWidth div 21) *2; //слева 2 см
        j:=Printer.PageHeight div 30; // сверху 1 см
        wid:=Printer.PageWidth - round(1.5*i);
        he:=Printer.PageHeight - 2*j; // сверху 1 см
      end
      else
      begin
        i:=Printer.PageWidth div 30 ; //слева 1 см
        j:=(Printer.PageHeight div 21) *2; // сверху 2 см
        wid:=Printer.PageWidth - 2*i;
        he:=Printer.PageHeight - round(1.5*i); // сверху 1 см
      end;
      k:=min(wid/Chart.Width,He/Chart.Height);
      ARect:=Rect(i,j,i+round(Chart.Width*k),j+round(Chart.Height*k));
      BrColor:=Chart.Color;
      Chart.Color:=clWhite;
      Meta:=Chart.TeeCreateMetafile(true,Chart.ClientRect);
      Chart.Color:=BrColor;
      try
        Printer.BeginDoc;
        try
          Printer.Canvas.StretchDraw(ARect,Meta);
        finally
          Printer.EndDoc;
        end;
      finally
        Meta.Free;
      end;
  end;
end;

procedure TDM.t_counterPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  t_counter.Cancel;
  tdspcounter.Cancel;
  MessageBox(Application.Handle,PChar(langList[742]+#13#10+langList[743]),PChar(langList[2]),mb_Ok or mb_IconInformation or mb_DefButton1);
  Action:=daAbort;
end;

procedure DestroyPUFormulaList(Full: boolean; TmpList1: TIntegerAssociationList);
var xx1,i: integer;
begin
  xx1:=TmpList1.Count;
  if xx1>0 then
   begin
     try
     for i:=xx1-1 downto 0 do Dispose(PInfoPUFormula(TmpList1.ValueList[i]));
     finally
     end;
   end;
  TmpList1.Clear;
  if Full then TmpList1.Free;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
{$ifdef myDBG} OutputDebugString('DataModuleDestroy in'); {$endif}
 LoadMess.Free;
 if Assigned(langList) then
  begin
    langList.Clear;
    langList.Free;
  end;
 if Assigned(PUFormulaList) then
    DestroyPUFormulaList(true,PUFormulaList);

{$ifdef myDBG} OutputDebugString('DataModuleDestroy out'); {$endif}
end;

function StrScan(Str: PChar; Chr: Char): PChar; assembler;
asm
        PUSH    EDI
        PUSH    EAX
        MOV     EDI,Str
        OR      ECX, -1
        XOR     AL,AL
        REPNE   SCASB
        NOT     ECX
        POP     EDI
        XCHG    EAX, EDX
        REPNE   SCASB
        XCHG    EAX, EDI
        POP     EDI
        JE      @@1
        XOR     EAX, EAX
        RET
@@1:    DEC     EAX
end;

function IndexOfCharp( S : PChar; Chr : Char ) : Integer;
asm
        PUSH     EAX
        CALL     StrScan
        POP      EDX
        TEST     EAX, EAX
        JE       @@exit__1
        SUB      EAX, EDX
        INC      EAX
        RET
@@exit__1:
        DEC      EAX
end;

function StrIsStartingFrom( Str, Pattern: PChar ): Boolean;
asm
        XOR     ECX, ECX
      @@1:
        MOV     CL, [EDX]   // pattern[ i ]
        INC     EDX
        MOV     CH, [EAX]   // str[ i ]
        INC     EAX
        TEST    CL,CL
        JZ      @@2
        CMP     CL, CH
        JE      @@1
      @@2:
        SETZ    AL
end;

function TDM.GetStrKvartir(id_apart: integer): string;
begin
  result:='';
  tmpDataSet2.Close;
  tmpDataSet2.CommandText:='select name from t_apart_sku where id_apart='+InttoStr(id_apart);
  tmpDataSet2.Open;
  if tmpDataSet2.RecordCount>0 then
     result:=' '+Trim(tmpDataSet2.Fields[0].AsString);
  tmpDataSet2.Close;
end;

function TDM.IsKvartirPU(id_counter: integer): integer;
begin
  result:=0;
  if BaseForm.UseCntinSKU.Checked then
   begin
     tmpDataSet2.Close;
     tmpDataSet2.CommandText:='select id_apart from t_counter where id_counter='+InttoStr(id_counter);
     tmpDataSet2.Open;
     if (tmpDataSet2.RecordCount>0) and (not tmpDataSet2.Fields[0].IsNull) then
      result:=tmpDataSet2.Fields[0].AsInteger;
     tmpDataSet2.Close;
   end;
end;

function TDM.CreateOPCPath(numcounter,idline:integer): string;
var s: string;
begin
//OPC\NICK\COM1\Line1\KM5_17240
  result:='';
  if tline.Locate('id_line',idline,[]) then
   begin
     if not t_model.Locate('id_model',t_counter.FieldByName('id_model').AsInteger,[]) then exit;
     if StrIsStartingFrom(PChar(UPPERCASE(tline.FieldByName('Port').AsString)),'COM')
      then S:='COM' else s:=UPPERCASE(tline.FieldByName('Port').AsString);
     S:='OPC\'+UPPERCASE(tline.FieldByName('node_name').AsString)+'\'+S+
      tline.FieldByName('numport').AsString+'\Line'+InttoStr(idline)+'\'+
      t_model.FieldByName('shortname').AsString+'_'+t_counter.FieldByName('netaddr').AsString;
     if not t_counter.FieldByName('subnetaddr').IsNull then S:=S+'_'+t_counter.FieldByName('subnetaddr').ASString;
     result:=S;
   end;
end;

procedure TDM.menuitdridex2Click(Sender: TObject);
var ExpClass:TDBGridEhExportClass;
    Ext:String;
    ParamMaska,ZnParam: TStrings;
    i,j,k,k1: integer;
    RichEdt: TRichEdit;
    StrStream:TStringStream;
begin

  DBGridEhForPrintExp:=(PmenuGridEh.PopupComponent as TDBGridEh);
  if (Sender as TMenuItem).Tag=0 then //экспорт
   begin
     SaveDialog1.FileName := '';//DBGridEhForPrintExp.Hint;
     if SaveDialog1.Execute then
      begin
        case SaveDialog1.FilterIndex of
          1: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
          2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
          3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
          4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
          5: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        else
          ExpClass := nil; Ext := '';
        end;
        if ExpClass <> nil then
         begin
           if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <>
               UpperCase(Ext) then SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
           SaveDBGridEhToExportFile(ExpClass,DBGridEhForPrintExp,SaveDialog1.FileName,True)
         end;
      end;
   end
  else begin // печать
         PrintDBGridEh1.DBGridEh:=DBGridEhForPrintExp;
         PrintDBGridEh1.Title.Clear;
         case ExtractIntPrm('$',0,DBGridEhForPrintExp.Hint) of
          0: PrintDBGridEh1.BeforeGridText.Text:=DBGridEhForPrintExp.Hint;
          1: begin // Анализ температурных графиков в динамике
               if (BaseForm.FilenameEdit1.FileName<>'') and FileExists(BaseForm.FilenameEdit1.FileName) then
                begin
                  ParamMaska:=TStringList.Create;
                  ParamMaska.Add('counter');
                  ParamMaska.Add('address');
                  ParamMaska.Add('t1grf');
                  ZnParam:=TStringList.Create;
                  for i:=1 to 3 do
                    ZnParam.Add(ExtractStrPrm('$',i,DBGridEhForPrintExp.Hint));

                  RichEdt := TRichEdit.Create(nil);
                  RichEdt.Visible := False;
                  RichEdt.ParentWindow := GetDesktopWindow;
                  RichEdt.Lines.LoadFromFile(BaseForm.FilenameEdit1.FileName);
                  j:=0;
                  repeat
                    i:=RichEdt.FindText('#',j,Length(RichEdt.Text)-j,[]);
                    if i<>-1 then // встретили параметр
                     begin
                       j:=i;
                       for k:=0 to ParamMaska.Count-1 do
                        begin  // определяем, какой это параметр
                          k1:=RichEdt.FindText(ParamMaska[k],j+1,length(ParamMaska[k]),[]);
                          if k1<>-1 then
                           begin
                             RichEdt.SelStart := j;
                             RichEdt.SelLength := Length(ParamMaska[k])+1;
                             RichEdt.SelText := ZnParam[k]; // заменяем параметр на значение
                             j:=j+length(ZnParam[k]);
                             Break;
                           end;
                        end;
                     end
                  until i<0;
                  StrStream:=TStringStream.Create('');
                  RichEdt.Lines.SaveToStream(StrStream);
                  StrStream.Position:=0;
                  // загружаем уже сформированный заголовок
                  PrintDBGridEh1.BeforeGridText.LoadFromStream(StrStream);
                  StrStream.Free;
                  RichEdt.Clear;
                  RichEdt.Free;
                  ZnParam.Clear;
                  ZnParam.Free;
                  ParamMaska.Clear;
                  ParamMaska.Free;
                end
                 else PrintDBGridEh1.BeforeGridText.Text:=langList[744]+
               ExtractStrPrm('$',1,DBGridEhForPrintExp.Hint)+' '+ExtractStrPrm('$',2,DBGridEhForPrintExp.Hint);
             end; // 1
           end; // case
         PrintDBGridEh1.Preview;
       end; // печать
end;

procedure TDM.tizmkAfterPost(DataSet: TDataSet);
begin
//  Izmkan.ToolButton10.Enabled:=true;
end;

procedure TDM.mnuGrafClick(Sender: TObject);
begin
  if (Sender as TMenuItem).Tag=0 then //печать
     PrintChart(TChart(PmenuChart.PopupComponent))
   else TChart(PmenuChart.PopupComponent).CopyToClipboardBitmap;
end;

function Q_PStrHashKey(P: Pointer; L:integer): Word;
asm
        TEST    EAX,EAX
        JE      @@qt
        MOV     ECX,EDX   // длина
        LEA     EDX,[EAX-1]
        XOR     EAX,EAX
        PUSH    EBX
@@lp:   MOVZX   EBX,BYTE PTR [EDX+ECX]
        ADD     EAX,EBX
        DEC     ECX
        JNE     @@lp
        POP     EBX
@@qt:
end;



function TDM.SendToInBaza(Cmd:byte;DopParam:longint):boolean;
var buf: array[0..15] of char;
    TimeOut:DWORD;
begin
  result:=False;
  if BaseForm.InBazaName.Text='' then exit;
  if not ScanPort(BaseForm.InBazaName.Text,77778) then Exit;
  if not CS1.Active then CS1.Host:=BaseForm.InBazaName.Text;
  CS1.Active:=true;
  TimeOut:=GetTickCount+20000;
  while not Application.Terminated do
  begin
    Application.ProcessMessages;
    if GetTickCount>TimeOut then Exit;
    Sleep(100);
    if CS1.Active then Break;
  end;
  result:=True;
  zeromemory(@buf[4],12);
  buf[0]:='T';
  buf[1]:='B';
  buf[2]:='N';
  buf[3]:=Chr(Cmd);
  try
    PInteger(@buf[4])^:=DopParam;
    PWORD(@buf[14])^:=Q_PStrHashKey(@buf[0],8);
    CS1.Socket.SendBuf(Buf,16);
  except
  end;
  CS1.Active:=false;
end;

function TDM.SendToInBazaCmd(Cmd:byte):boolean;
var buf: array[0..7] of byte;
    TimeOut:DWORD;
    s: string;
begin
  result:=False;
  s:=BaseForm.InBazaName.Text;
  if s='' then exit;//s:='localhost';
  if not ScanPort(s,77778) then Exit;
  if not CS1.Active then CS1.Host:=s;
  CS1.Active:=true;
  TimeOut:=GetTickCount+10000;
  while not Application.Terminated do
  begin
    Application.ProcessMessages;
    if GetTickCount>TimeOut then Exit;
    Sleep(100);
    if CS1.Active then Break;
  end;
  result:=True;
  PLongWord(@buf[4])^:=0;
  PLongWord(@buf[0])^:=$4E4254;
  buf[3]:=Cmd;
  try
    PWORD(@buf[6])^:=Q_PStrHashKey(@buf[0],6);
    CS1.Socket.SendBuf(Buf,8);
  except
  end;
  CS1.Active:=false;
end;



function ScanPort(Address:String;iPort:integer):boolean;

function LookupName: TInAddr;
var
 HostEnt: PHostEnt;
 InAddr: TInAddr;
begin
 if Pos('.', Address)>0 then
  InAddr.s_addr := inet_addr(PChar(Address))
 else
  begin
  HostEnt := gethostbyname(PChar(Address));
  FillChar(InAddr, SizeOf(InAddr), 0);
  if HostEnt <> nil then
   begin
    with InAddr, HostEnt^ do
     begin
      S_un_b.s_b1 := h_addr^[0];
      S_un_b.s_b2 := h_addr^[1];
      S_un_b.s_b3 := h_addr^[2];
      S_un_b.s_b4 := h_addr^[3];
     end;
   end
  end;
  Result := InAddr;
end;


var
 s, opt: Integer;
 FSocket: TSOCKET; //Массив сокетов
 busy   : boolean; //Массив, в котором будет храниться информация о каждом сканируемом сокете
 port   : integer; //Массив сканируемых портов
 addr   : TSockAddr;
 hEvent : THandle; //Объект для обработки сетевых событий
 fset   : TFDset;
 tv     : TTimeval;
 tec    :PServEnt;
 PName:String;
 GInitData : TWSADATA;
begin
 result:=False;
 //Инициализирую WinSock
 WSAStartup(MAKEWORD(2,0), GInitData);

 //Записываю в переменную i значение начального порта

 //Заполняю основные поля структуры addr, которая будет использоваться
 //при вызове функции connect
 addr.sin_family := AF_INET;
 addr.sin_addr.s_addr := INADDR_ANY;

 //LookupName - эта функция написана выше и она возвращяет адрес в спец формате указанного сервера
 //Результат этой функции я записываю в поле адреса сервера структуры addr
 addr.sin_addr := LookupName;

 //Создаю объект для обработки сетевых событий
 hEvent := WSACreateEvent();
 busy:=false;

 //Инициализирую очередной j-й сокет из массива FSocket
 FSocket := socket(AF_INET, SOCK_STREAM, IPPROTO_IP);

 //Добавляю j-й сокет к объекту событий с помощью WSAEventSelect
 //1-й параметр - Добавляемый сокет
 //2-й параметр - объект событий, который был создан с помощью WSACreateEvent
 //3-й параметр - какие события ожидать. Тут я указываю FD_WRITE - события записи и FD_CONNECT - события о заключении соединения
 WSAEventSelect(FSocket, hEvent, FD_WRITE + FD_CONNECT);

 //Указываем порт, на который надо произвести попытку соединения
 addr.sin_port := htons(iPort);

 //Попытка коннекта на очередной порт
 connect(FSocket, @addr, sizeof(addr));

 //Даём ОС поработать и обработать накопившиеся события.
 //Если этого не делать, то вовремя сканирования будет
 //происходить эффект зависания
 Application.ProcessMessages;

 //Проверяю, были ли ошибки.
 if WSAGetLastError()=WSAEINPROGRESS then
 begin
    //Если ошибка произошла, то закрываю этот порт
    closesocket (FSocket);
    //Устанавливаю соответствующий элемент в массиве busy в true
    //чтобы потом не проверять этот порт, потому что он всё равно
    //уже закрыт
    busy:=true;
 end;

 //Указываю в массиве port, на какой именно порт мы сейчас послали запрос
 port:=iPort;

 //Обнуляю переменную fset
 FD_Zero(fset);

 if busy <> true then FD_SET (FSocket, fset);
 //Даём ОС поработать и обработать накопившиеся события.
 Application.ProcessMessages;

 //Заполняю структуру, в которой указано время ожидания события от сокета
 tv.tv_sec := 1; //Мы будем ждать 1 секунду
 tv.tv_usec := 0;

 //Ожидаем пока произойдёт хотя бы одно событие от любого из сокетов
 s:=select (1, nil, @fset, nil, @tv);

 //Даём ОС поработать и обработать накопившиеся события.
 Application.ProcessMessages;

 if FD_ISSET (FSocket, fset) then
 begin
      //В переменную s записываеться размер перменной Opt
      s:=Sizeof(Opt);
      opt:=1;
      //Получаю состояние текущего j-го сокета
      //результат состояния будет в переменной opt
      getsockopt(FSocket, SOL_SOCKET, SO_ERROR, @opt, s);
      //Если opt равно 0 то порт открыт и к нему можно подключится
      if opt=0 then
         begin
          //Пытаюсь узнать символьное имя порта
          tec := getservbyport(htons(Port),'TCP');
          if tec=nil then
           PName:='Unknown'
          else
           begin
            PName:=tec.s_name;
           end;
           result:=True;
         end;//if opt=0 then
     //Закрыть j-й сокет, потому что он больше уже не нужен
 end;//if FD_ISSET (FSocket, fset) then
 closesocket(FSocket);
 //Закрываю объект событий
 WSACloseEvent(hEvent);
end;

procedure GetIdTranzitDom(OldCount: integer; idTranzitDom:TList;countersys: integer);
var i,j,k: integer;
    p1: PParamDom1;
label uje_est;
begin
  with DM.TmpDataSet2 do
   begin
     Close;
     CommandText:=
     'select id_building2,id_building3,id_building4,id_building5 from t_dsp_counter '+
     ' where (counter_sys1&'+inttostr(countersys)+')>0 and id_building1='+
     Inttostr(PParamDom1(idTranzitDom[OldCount])^.id_dom);
     Open;
     for i:=0 to 3 do
      if fields[i].AsInteger>0 then // счетчик транзитный
       begin
         k:=idTranzitDom.Count-1;
         for j:=0 to k do
          if PParamDom1(idTranzitDom[j])^.id_dom=fields[i].AsInteger then goto uje_est;
          new(p1);
          p1^.id_dom:=fields[i].AsInteger;
          idTranzitDom.Add(p1);
        uje_est: ;
      end;
     Close;
   end; // with
     if OldCount<idTranzitDom.Count-1 then
      begin
        inc(OldCount);
        GetIdTranzitDom(OldCount,idTranzitDom,countersys);
      end;
end;


procedure TDM.aChartAutoMashtabClick(Sender: TObject);
begin

  //корректируем меню по осям
  if not aChartMax.Enabled then
  begin
    aChartMax.tag:=Round(TChart(PmenuChart.PopupComponent).LeftAxis.Maximum * 100);
    aChartMax.Caption:=Format(langList[701]+' = %f',[aChartMax.tag / 100]);
    aChartMin.tag:=Round(TChart(PmenuChart.PopupComponent).LeftAxis.Minimum * 100);
    aChartMin.Caption:=Format(langList[702]+' = %f',[aChartMin.tag / 100]);
  end;

  aChartMin.Enabled:=Not aChartAutoMashtab.Checked;
  aChartMax.Enabled:=Not aChartAutoMashtab.Checked;
  if aChartAutoMashtab.Checked then
  begin
    TChart(PmenuChart.PopupComponent).LeftAxis.AutomaticMaximum:=true
  end
  else begin
    TChart(PmenuChart.PopupComponent).LeftAxis.Automatic:=False;
    TChart(PmenuChart.PopupComponent).LeftAxis.Minimum:=aChartMin.tag / 100;
    TChart(PmenuChart.PopupComponent).LeftAxis.Maximum:=aChartMax.tag / 100;
  end;

end;

procedure TDM.aChartMaxClick(Sender: TObject);
var s:String;
    tmpF:single;
begin
  s:=Format('%f',[aChartMax.tag/100]);
  if MyInputQuery(langList[745],langList[746],s) then
  begin
     try
       tmpF:=StrToFloat(S);
       TChart(PmenuChart.PopupComponent).LeftAxis.Maximum:=tmpF;
       aChartMax.tag:=Round(tmpF*100);
       aChartMax.Caption:=Format(langList[701]+' = %f',[tmpF]);
     except
     end;
  end;
end;

procedure TDM.aChartMinClick(Sender: TObject);
var s:String;
    tmpF:single;
begin
  s:=Format('%f',[aChartMin.tag/100]);
  if MyInputQuery(langList[745],langList[747],s) then
  begin
     try
       tmpF:=StrToFloat(S);
       TChart(PmenuChart.PopupComponent).LeftAxis.Minimum:=tmpF;
       aChartMin.tag:=Round(tmpF*100);
       aChartMin.Caption:=Format(langList[702]+' = %f',[tmpF]);
     except
     end;
  end;
end;

procedure GetPredMonth(var Date1:TdateTime; var Date2: TDateTime);
var aYear,aMonth,aDay: WORD;
begin
  DecodeDate(Date,aYear,aMonth,aDay);
  if aMonth=1 then
   begin
     aMonth:=13;
     Date2:=Encodedate(aYear,1,1)-1;
     dec(aYear);
  end else Date2:=Encodedate(aYear,aMonth,1)-1;
  Date1:=Encodedate(aYear,aMonth-1,1);
end;

{  PReportData=^TReportData;
  TReportData=record
                OptionReport: integer;
                NameReport: string;
                NameFile: string;
              end;}

procedure GetReportStruc;
var i,option: integer;
    p1: PReportData;
    sr: TSearchRec;
    ch1: char;
begin
  option:=BaseForm.ReportStruc.Count-1;
  for i:=option downto 0 do
    if Assigned(BaseForm.ReportStruc.Items[i]) then
     Dispose(PReportData(BaseForm.ReportStruc.Items[i]));
  BaseForm.ReportStruc.Clear;
  if FindFirst(BaseForm.GisklientPathRep+'*.fr3', faAnyFile, sr) = 0 then
    begin
      repeat
        DM.frReport1.LoadFromFile(BaseForm.GisklientPathRep+sr.Name);
        if DM.frReport1.ReportOptions.VersionBuild<>'' then
         begin
           option:=0;
           try
             option:=Strtoint(DM.frReport1.ReportOptions.VersionBuild);
           except
           end;
           if option>0 then
            begin
              new(p1);
              p1^.NameFile:=sr.Name;
              p1^.OptionReport:=option;
              p1^.NameReport:=DM.frReport1.ReportOptions.Name;
              ch1:=sr.Name[1];
              if (ch1='h') or (ch1='H') then p1^.TypeArh:=0 // час арх
               else
                 if (ch1='m') or (ch1='M') then p1^.TypeArh:=2 // месяч. арх
                  else p1^.TypeArh:=1; // сут.
              BaseForm.ReportStruc.Add(p1);
            end;
         end;
      until FindNext(sr) <> 0;
      SysUtils.FindClose(sr);
    end;
end;

function GetTnv(Date1,Date2: TDateTime): boolean;
var s: string;
    dt1,cnt: integer;
begin
  setlength(ArrayTnv,0);
  DM.tmpDataSet2.Close;
//  s:='SELECT temp_date,day_temp  from t_day_temperature where temp_date between '+
//    #39+FormatDateTime('yyyymmdd',Date1)+#39' and '#39+FormatDateTime('yyyymmdd',Date2)+#39' order by 1';
{$ifdef DEMOV}
{   s:=DecryptStr(#171#76#83#7#45#202#233#192#28#253#24#131#237#34#31+
#139#90#190#31#34#243#104#222#142#23#175#102#200#147#8#121#37#123#44#58#225#11#191#229#241#5#130#112#248#236#79#101+
#82#203#107#153#175#47#1#96#125#143#225#77#246#85#55#30#191#114#61#159#220#61#196#66#197#233#204)+
   #39+FormatDateTime('yyyymmdd',Date1)+#39' and '#39+FormatDateTime('yyyymmdd',Date2)+#39' order by 1';
}
   s:='SELECT temp_date,day_temp  from t_day_temperature where temp_date between '+
    #39+FormatDateTime('yyyymmdd',Date1)+#39' and '#39+FormatDateTime('yyyymmdd',Date2)+#39' order by 1';

{$else}
   s:=DecryptStr(#4#131#100#190#197#57#204#214#202#182#155#125#76#91#255+
#202#184#129#155#55#142#177#86#211#221#86#98#113#142#238#119+
#117#171#94#222#209#94#72#106#157#74#219#243#129#2#107#244+
#210#4#214#48#249#168#90#216#238#121#10#103#68#221#179#171#31#67#170#150#43#162#26#167#36#201#213)+
   #39+FormatDateTime('yyyymmdd',Date1)+#39' and '#39+FormatDateTime('yyyymmdd',Date2)+#39' order by 1';
{$endif}
  if BaseForm.ModeLabel.Tag>0 then s[26]:='1';
  DM.tmpDataSet2.CommandText:=s;
  DM.tmpDataSet2.Open;
  DM.tmpDataSet2.First;
  dt1:=Trunc(Date1);
  cnt:=Trunc(Date2)-dt1;
  setlength(ArrayTnv,cnt+1);
  zeromemory(@ArrayTnv[0],(cnt+1)*sizeof(single));
  Result:=(cnt=DM.tmpDataSet2.RecordCount-1);
  while not DM.tmpDataSet2.Eof do
   begin
     if DM.tmpDataSet2.Fields[1].IsNull then
      begin
        ArrayTnv[Trunc(DM.tmpDataSet2.Fields[0].AsFloat)-dt1]:=0;
        Result:=false;
      end else ArrayTnv[Trunc(DM.tmpDataSet2.Fields[0].AsFloat)-dt1]:=DM.tmpDataSet2.Fields[1].AsFloat;
     DM.tmpDataSet2.Next;
   end;
  DM.tmpDataSet2.Close;
end;

function GetPoslDayofMonth(sdate: TDateTime):DWORD;
var aYear,aMonth,aDay: WORD;
begin
  DecodeDate(sdate,aYear,aMonth,aDay);
  inc(aMonth);
  if aMonth>12 then begin aMonth:=1; Inc(aYear); end;
  Result:=Round(EncodeDate(aYear,aMonth,1))-1;
end;


procedure TDM.dsBuildingDataChange(Sender: TObject; Field: TField);
begin
  if baseForm.EditBase.Down then
   begin
     baseForm.SaveBtn_doma.Enabled:=not t_building.FieldByName('id_street').IsNull;
     baseForm.SaveBtn_doma2.Enabled:=baseForm.SaveBtn_doma.Enabled;
   end;
  BaseForm.sbDeleteDCUpdateState;
end;

procedure XorBlock(var InData1, InData2; Size: longword);
var
  i: longword;
begin
{$I VMProtectBegin.inc}
  for i:= 1 to Size do
    Pbyte(longword(@InData1)+i-1)^:= Pbyte(longword(@InData1)+i-1)^ xor Pbyte(longword(@InData2)+i-1)^;
{$I VMProtectEnd.inc}
end;

procedure InitKey(const Key; Size: longword);
var
  kp: array[0..139] of dword;
  i, n: integer;
  t, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17: dword;
  a, b, c, d: dword;
begin
 {$I VMProtectBegin.inc}
  FillChar(kp,256 div 8,0);
  Move(Key,kp,Size div 8);
  if Size < 256 then
  begin
    i:= Size div 32;
    t:= 1 shl (Size mod 32);
    kp[i]:= (kp[i] and (t - 1)) or t;
  end;
  for i:= 8 to 139 do
  begin
    t:= kp[i - 8] xor kp[i - 5] xor kp[i - 3] xor kp[i - 1] xor $9e3779b9 xor longword(i-8);
    kp[i]:= (t shl 11) or (t shr 21);
  end;
  for i:= 0 to 3 do
  begin
    n:= i*32;
    a:= kp[n + 4*0 + 8]; b:= kp[n + 4*0 + 9]; c:= kp[n + 4*0 + 10]; d:= kp[n + 4*0 + 11];
    t1:= a xor c; t2:= a or d; t3:= a and b; t4:= a and d; t5:= b or t4; t6:= t1 and t2; kp[ 9+n]:= t5 xor t6; t8:= b xor d; t9:= c or t3; t10:= t6 xor t8; kp[ 11+n]:= t9 xor t10; t12:= c xor t3; t13:= t2 and kp[ 11+n]; kp[ 10+n]:= t12 xor t13; t15:= not kp[ 10+n]; t16:= t2 xor t3; t17:= kp[ 9+n] and t15; kp[ 8+n]:= t16 xor t17;
    a:= kp[n + 4*1 + 8]; b:= kp[n + 4*1 + 9]; c:= kp[n + 4*1 + 10]; d:= kp[n + 4*1 + 11];
    t1:= not a; t2:= b xor d; t3:= c and t1; kp[ 12+n]:= t2 xor t3; t5:= c xor t1; t6:= c xor kp[ 12+n]; t7:= b and t6; kp[ 15+n]:= t5 xor t7; t9:= d or t7; t10:= kp[ 12+n] or t5; t11:= t9 and t10; kp[ 14+n]:= a xor t11; t13:= d or t1; t14:= t2 xor kp[ 15+n]; t15:= kp[ 14+n] xor t13; kp[ 13+n]:= t14 xor t15;
    a:= kp[n + 4*2 + 8]; b:= kp[n + 4*2 + 9]; c:= kp[n + 4*2 + 10]; d:= kp[n + 4*2 + 11];
    t1:= a xor d; t2:= b xor d; t3:= a and b; t4:= not c; t5:= t2 xor t3; kp[ 18+n]:= t4 xor t5; t7:= a xor t2; t8:= b or t4; t9:= d or kp[ 18+n]; t10:= t7 and t9; kp[ 17+n]:= t8 xor t10; t12:= c xor d; t13:= t1 or t2; t14:= kp[ 17+n] xor t12; kp[ 19+n]:= t13 xor t14; t16:= t1 or kp[ 18+n]; t17:= t8 xor t14; kp[ 16+n]:= t16 xor t17;
    a:= kp[n + 4*3 + 8]; b:= kp[n + 4*3 + 9]; c:= kp[n + 4*3 + 10]; d:= kp[n + 4*3 + 11];
    t1:= b xor d; t2:= not t1; t3:= a or d; t4:= b xor c; kp[ 23+n]:= t3 xor t4; t6:= a xor b; t7:= a or t4; t8:= c and t6; t9:= t2 or t8; kp[ 20+n]:= t7 xor t9; t11:= a xor kp[ 23+n]; t12:= t1 and t6; t13:= kp[ 20+n] xor t11; kp[ 21+n]:= t12 xor t13; t15:= kp[ 20+n] or kp[ 21+n]; t16:= t3 and t15; kp[ 22+n]:= b xor t16;
    a:= kp[n + 4*4 + 8]; b:= kp[n + 4*4 + 9]; c:= kp[n + 4*4 + 10]; d:= kp[n + 4*4 + 11];
    t1:= not c; t2:= b xor c; t3:= b or t1; t4:= d xor t3; t5:= a and t4; kp[ 27+n]:= t2 xor t5; t7:= a xor d; t8:= b xor t5; t9:= t2 or t8; kp[ 25+n]:= t7 xor t9; t11:= d and t3; t12:= t5 xor kp[ 25+n]; t13:= kp[ 27+n] and t12; kp[ 26+n]:= t11 xor t13; t15:= t1 or t4; t16:= t12 xor kp[ 26+n]; kp[ 24+n]:= t15 xor t16;
    a:= kp[n + 4*5 + 8]; b:= kp[n + 4*5 + 9]; c:= kp[n + 4*5 + 10]; d:= kp[n + 4*5 + 11];
    t1:= a xor c; t2:= b or d; t3:= b xor c; t4:= not t3; t5:= a and d; kp[ 29+n]:= t4 xor t5; t7:= b or c; t8:= d xor t1; t9:= t7 and t8; kp[ 31+n]:= t2 xor t9; t11:= t1 and t7; t12:= t4 xor t8; t13:= kp[ 31+n] and t11; kp[ 28+n]:= t12 xor t13; t15:= t3 xor t11; t16:= kp[ 31+n] or t15; kp[ 30+n]:= t12 xor t16;
    a:= kp[n + 4*6 + 8]; b:= kp[n + 4*6 + 9]; c:= kp[n + 4*6 + 10]; d:= kp[n + 4*6 + 11];
    t1:= not a; t2:= a xor b; t3:= a xor d; t4:= c xor t1; t5:= t2 or t3; kp[ 32+n]:= t4 xor t5; t7:= not d; t8:= kp[ 32+n] and t7; kp[ 33+n]:= t2 xor t8; t10:= b or kp[ 33+n]; t11:= c or kp[ 32+n]; t12:= t7 xor t10; kp[ 35+n]:= t11 xor t12; t14:= d or kp[ 33+n]; t15:= t1 xor t14; t16:= kp[ 32+n] or kp[ 35+n]; kp[ 34+n]:= t15 xor t16;
    a:= kp[n + 4*7 + 8]; b:= kp[n + 4*7 + 9]; c:= kp[n + 4*7 + 10]; d:= kp[n + 4*7 + 11];
    t1:= not a; t2:= a xor d; t3:= a xor b; t4:= c xor t1; t5:= t2 or t3; kp[ 36+n]:= t4 xor t5; t7:= not kp[ 36+n]; t8:= b or t7; kp[ 39+n]:= t2 xor t8; t10:= a and kp[ 36+n]; t11:= b xor kp[ 39+n]; t12:= t8 and t11; kp[ 38+n]:= t10 xor t12; t14:= a or t7; t15:= t3 xor t14; t16:= kp[ 39+n] and kp[ 38+n]; kp[ 37+n]:= t15 xor t16;
  end;
  a:= kp[136]; b:= kp[137]; c:= kp[138]; d:= kp[139];
  t1:= a xor c; t2:= a or d; t3:= a and b; t4:= a and d; t5:= b or t4; t6:= t1 and t2; kp[137]:= t5 xor t6; t8:= b xor d; t9:= c or t3; t10:= t6 xor t8; kp[139]:= t9 xor t10; t12:= c xor t3; t13:= t2 and kp[139]; kp[138]:= t12 xor t13; t15:= not kp[138]; t16:= t2 xor t3; t17:= kp[137] and t15; kp[136]:= t16 xor t17;
  Move(kp[8],l_key,Sizeof(l_key));
  FillChar(kp,Sizeof(kp),0);
{$I VMProtectEnd.inc}
end;

procedure EncryptECB(const InData; var OutData);
var
  i: integer;
  a, b, c, d, e, f, g, h: dword;
  t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17: dword;
begin
 {$I VMProtectBegin.inc}
  a:= PDWord(@InData)^;
  b:= PDWord(longword(@InData)+4)^;
  c:= PDWord(longword(@InData)+8)^;
  d:= PDWord(longword(@InData)+12)^;

  i:= 0;
  while i < 32 do
  begin
    a:= a xor l_key[4*(i)]; b:= b xor l_key[4*(i)+1]; c:= c xor l_key[4*(i)+2]; d:= d xor l_key[4*(i)+3];
    t1:= b xor d; t2:= not t1; t3:= a or d; t4:= b xor c; h:= t3 xor t4; t6:= a xor b; t7:= a or t4; t8:= c and t6; t9:= t2 or t8; e:= t7 xor t9; t11:= a xor h; t12:= t1 and t6; t13:= e xor t11; f:= t12 xor t13; t15:= e or f; t16:= t3 and t15; g:= b xor t16;
    e:= (e shl 13) or (e shr 19); g:= (g shl 3) or (g shr 29); f:= f xor e xor g; h:= h xor g xor (e shl 3); f:= (f shl 1) or (f shr 31); h:= (h shl 7) or (h shr 25); e:= e xor f xor h; g:= g xor h xor (f shl 7); e:= (e shl 5) or (e shr 27); g:= (g shl 22) or (g shr 10);
    e:= e xor l_key[4*(i+1)]; f:= f xor l_key[4*(i+1)+1]; g:= g xor l_key[4*(i+1)+2]; h:= h xor l_key[4*(i+1)+3];
    t1:= e xor h; t2:= f xor h; t3:= e and f; t4:= not g; t5:= t2 xor t3; c:= t4 xor t5; t7:= e xor t2; t8:= f or t4; t9:= h or c; t10:= t7 and t9; b:= t8 xor t10; t12:= g xor h; t13:= t1 or t2; t14:= b xor t12; d:= t13 xor t14; t16:= t1 or c; t17:= t8 xor t14; a:= t16 xor t17;
    a:= (a shl 13) or (a shr 19); c:= (c shl 3) or (c shr 29); b:= b xor a xor c; d:= d xor c xor (a shl 3); b:= (b shl 1) or (b shr 31); d:= (d shl 7) or (d shr 25); a:= a xor b xor d; c:= c xor d xor (b shl 7); a:= (a shl 5) or (a shr 27); c:= (c shl 22) or (c shr 10);
    a:= a xor l_key[4*(i+2)]; b:= b xor l_key[4*(i+2)+1]; c:= c xor l_key[4*(i+2)+2]; d:= d xor l_key[4*(i+2)+3];
    t1:= not a; t2:= b xor d; t3:= c and t1; e:= t2 xor t3; t5:= c xor t1; t6:= c xor e; t7:= b and t6; h:= t5 xor t7; t9:= d or t7; t10:= e or t5; t11:= t9 and t10; g:= a xor t11; t13:= d or t1; t14:= t2 xor h; t15:= g xor t13; f:= t14 xor t15;
    e:= (e shl 13) or (e shr 19); g:= (g shl 3) or (g shr 29); f:= f xor e xor g; h:= h xor g xor (e shl 3); f:= (f shl 1) or (f shr 31); h:= (h shl 7) or (h shr 25); e:= e xor f xor h; g:= g xor h xor (f shl 7); e:= (e shl 5) or (e shr 27); g:= (g shl 22) or (g shr 10);
    e:= e xor l_key[4*(i+3)]; f:= f xor l_key[4*(i+3)+1]; g:= g xor l_key[4*(i+3)+2]; h:= h xor l_key[4*(i+3)+3];
    t1:= e xor g; t2:= e or h; t3:= e and f; t4:= e and h; t5:= f or t4; t6:= t1 and t2; b:= t5 xor t6; t8:= f xor h; t9:= g or t3; t10:= t6 xor t8; d:= t9 xor t10; t12:= g xor t3; t13:= t2 and d; c:= t12 xor t13; t15:= not c; t16:= t2 xor t3; t17:= b and t15; a:= t16 xor t17;
    a:= (a shl 13) or (a shr 19); c:= (c shl 3) or (c shr 29); b:= b xor a xor c; d:= d xor c xor (a shl 3); b:= (b shl 1) or (b shr 31); d:= (d shl 7) or (d shr 25); a:= a xor b xor d; c:= c xor d xor (b shl 7); a:= (a shl 5) or (a shr 27); c:= (c shl 22) or (c shr 10);
    a:= a xor l_key[4*(i+4)]; b:= b xor l_key[4*(i+4)+1]; c:= c xor l_key[4*(i+4)+2]; d:= d xor l_key[4*(i+4)+3];
    t1:= not a; t2:= a xor d; t3:= a xor b; t4:= c xor t1; t5:= t2 or t3; e:= t4 xor t5; t7:= not e; t8:= b or t7; h:= t2 xor t8; t10:= a and e; t11:= b xor h; t12:= t8 and t11; g:= t10 xor t12; t14:= a or t7; t15:= t3 xor t14; t16:= h and g; f:= t15 xor t16;
    e:= (e shl 13) or (e shr 19); g:= (g shl 3) or (g shr 29); f:= f xor e xor g; h:= h xor g xor (e shl 3); f:= (f shl 1) or (f shr 31); h:= (h shl 7) or (h shr 25); e:= e xor f xor h; g:= g xor h xor (f shl 7); e:= (e shl 5) or (e shr 27); g:= (g shl 22) or (g shr 10);
    e:= e xor l_key[4*(i+5)]; f:= f xor l_key[4*(i+5)+1]; g:= g xor l_key[4*(i+5)+2]; h:= h xor l_key[4*(i+5)+3];
    t1:= not e; t2:= e xor f; t3:= e xor h; t4:= g xor t1; t5:= t2 or t3; a:= t4 xor t5; t7:= not h; t8:= a and t7; b:= t2 xor t8; t10:= f or b; t11:= g or a; t12:= t7 xor t10; d:= t11 xor t12; t14:= h or b; t15:= t1 xor t14; t16:= a or d; c:= t15 xor t16;
    a:= (a shl 13) or (a shr 19); c:= (c shl 3) or (c shr 29); b:= b xor a xor c; d:= d xor c xor (a shl 3); b:= (b shl 1) or (b shr 31); d:= (d shl 7) or (d shr 25); a:= a xor b xor d; c:= c xor d xor (b shl 7); a:= (a shl 5) or (a shr 27); c:= (c shl 22) or (c shr 10);
    a:= a xor l_key[4*(i+6)]; b:= b xor l_key[4*(i+6)+1]; c:= c xor l_key[4*(i+6)+2]; d:= d xor l_key[4*(i+6)+3];
    t1:= a xor c; t2:= b or d; t3:= b xor c; t4:= not t3; t5:= a and d; f:= t4 xor t5; t7:= b or c; t8:= d xor t1; t9:= t7 and t8; h:= t2 xor t9; t11:= t1 and t7; t12:= t4 xor t8; t13:= h and t11; e:= t12 xor t13; t15:= t3 xor t11; t16:= h or t15; g:= t12 xor t16;
    e:= (e shl 13) or (e shr 19); g:= (g shl 3) or (g shr 29); f:= f xor e xor g; h:= h xor g xor (e shl 3); f:= (f shl 1) or (f shr 31); h:= (h shl 7) or (h shr 25); e:= e xor f xor h; g:= g xor h xor (f shl 7); e:= (e shl 5) or (e shr 27); g:= (g shl 22) or (g shr 10);
    e:= e xor l_key[4*(i+7)]; f:= f xor l_key[4*(i+7)+1]; g:= g xor l_key[4*(i+7)+2]; h:= h xor l_key[4*(i+7)+3];
    t1:= not g; t2:= f xor g; t3:= f or t1; t4:= h xor t3; t5:= e and t4; d:= t2 xor t5; t7:= e xor h; t8:= f xor t5; t9:= t2 or t8; b:= t7 xor t9; t11:= h and t3; t12:= t5 xor b; t13:= d and t12; c:= t11 xor t13; t15:= t1 or t4; t16:= t12 xor c; a:= t15 xor t16;

    Inc(i,8);
    if i < 32 then
    begin
      a:= (a shl 13) or (a shr 19); c:= (c shl 3) or (c shr 29); b:= b xor a xor c; d:= d xor c xor (a shl 3); b:= (b shl 1) or (b shr 31); d:= (d shl 7) or (d shr 25); a:= a xor b xor d; c:= c xor d xor (b shl 7); a:= (a shl 5) or (a shr 27); c:= (c shl 22) or (c shr 10);
    end;
  end;
  a:= a xor l_key[128]; b:= b xor l_key[128+1]; c:= c xor l_key[128+2]; d:= d xor l_key[128+3];

  PDWord(longword(@OutData)+ 0)^:= a;
  PDWord(longword(@OutData)+ 4)^:= b;
  PDWord(longword(@OutData)+ 8)^:= c;
  PDWord(longword(@OutData)+12)^:= d;
{$I VMProtectEnd.inc}
end;

procedure DecryptECB(const InData; var OutData);
var
  i: integer;
  a, b, c, d, e, f, g, h: dword;
  t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16: dword;
begin
 {$I VMProtectBegin.inc}
  a:= PDWord(@InData)^;
  b:= PDWord(longword(@InData)+4)^;
  c:= PDWord(longword(@InData)+8)^;
  d:= PDWord(longword(@InData)+12)^;

  i:= 32;
  a:= a xor l_key[4*32]; b:= b xor l_key[4*32+1]; c:= c xor l_key[4*32+2]; d:= d xor l_key[4*32+3];
  while i > 0 do
  begin
    if i < 32 then
    begin
      c:= (c shr 22) or (c shl 10); a:= (a shr 5) or (a shl 27); c:= c xor d xor (b shl 7); a:= a xor b xor d; d:= (d shr 7) or (d shl 25); b:= (b shr 1) or (b shl 31); d:= d xor c xor (a shl 3); b:= b xor a xor c; c:= (c shr 3) or (c shl 29); a:= (a shr 13) or (a shl 19);
    end;

    t1:= a and b; t2:= a or b; t3:= c or t1; t4:= d and t2; h:= t3 xor t4; t6:= not d; t7:= b xor t4; t8:= h xor t6; t9:= t7 or t8; f:= a xor t9; t11:= c xor t7; t12:= d or f; e:= t11 xor t12; t14:= a and h; t15:= t3 xor f; t16:= e xor t14; g:= t15 xor t16;
    e:= e xor l_key[4*(i-1)]; f:= f xor l_key[4*(i-1)+1]; g:= g xor l_key[4*(i-1)+2]; h:= h xor l_key[4*(i-1)+3];
    g:= (g shr 22) or (g shl 10); e:= (e shr 5) or (e shl 27); g:= g xor h xor (f shl 7); e:= e xor f xor h; h:= (h shr 7) or (h shl 25); f:= (f shr 1) or (f shl 31); h:= h xor g xor (e shl 3); f:= f xor e xor g; g:= (g shr 3) or (g shl 29); e:= (e shr 13) or (e shl 19);
    t1:= not g; t2:= e xor g; t3:= f xor h; t4:= e or t1; b:= t3 xor t4; t6:= e or f; t7:= f and t2; t8:= b xor t6; t9:= t7 or t8; a:= g xor t9; t11:= not b; t12:= h or t2; t13:= t9 xor t11; d:= t12 xor t13; t15:= f xor t11; t16:= a and d; c:= t15 xor t16;
    a:= a xor l_key[4*(i-2)]; b:= b xor l_key[4*(i-2)+1]; c:= c xor l_key[4*(i-2)+2]; d:= d xor l_key[4*(i-2)+3];
    c:= (c shr 22) or (c shl 10); a:= (a shr 5) or (a shl 27); c:= c xor d xor (b shl 7); a:= a xor b xor d; d:= (d shr 7) or (d shl 25); b:= (b shr 1) or (b shl 31); d:= d xor c xor (a shl 3); b:= b xor a xor c; c:= (c shr 3) or (c shl 29); a:= (a shr 13) or (a shl 19);
    t1:= not c; t2:= b and t1; t3:= d xor t2; t4:= a and t3; t5:= b xor t1; h:= t4 xor t5; t7:= b or h; t8:= a and t7; f:= t3 xor t8; t10:= a or d; t11:= t1 xor t7; e:= t10 xor t11; t13:= a xor c; t14:= b and t10; t15:= t4 or t13; g:= t14 xor t15;
    e:= e xor l_key[4*(i-3)]; f:= f xor l_key[4*(i-3)+1]; g:= g xor l_key[4*(i-3)+2]; h:= h xor l_key[4*(i-3)+3];
    g:= (g shr 22) or (g shl 10); e:= (e shr 5) or (e shl 27); g:= g xor h xor (f shl 7); e:= e xor f xor h; h:= (h shr 7) or (h shl 25); f:= (f shr 1) or (f shl 31); h:= h xor g xor (e shl 3); f:= f xor e xor g; g:= (g shr 3) or (g shl 29); e:= (e shr 13) or (e shl 19);
    t1:= g xor h; t2:= g or h; t3:= f xor t2; t4:= e and t3; b:= t1 xor t4; t6:= e xor h; t7:= f or h; t8:= t6 and t7; d:= t3 xor t8; t10:= not e; t11:= g xor d; t12:= t10 or t11; a:= t3 xor t12; t14:= g or t4; t15:= t7 xor t14; t16:= d or t10; c:= t15 xor t16;
    a:= a xor l_key[4*(i-4)]; b:= b xor l_key[4*(i-4)+1]; c:= c xor l_key[4*(i-4)+2]; d:= d xor l_key[4*(i-4)+3];
    c:= (c shr 22) or (c shl 10); a:= (a shr 5) or (a shl 27); c:= c xor d xor (b shl 7); a:= a xor b xor d; d:= (d shr 7) or (d shl 25); b:= (b shr 1) or (b shl 31); d:= d xor c xor (a shl 3); b:= b xor a xor c; c:= (c shr 3) or (c shl 29); a:= (a shr 13) or (a shl 19);
    t1:= b xor c; t2:= b or c; t3:= a xor c; t4:= t2 xor t3; t5:= d or t4; e:= t1 xor t5; t7:= a xor d; t8:= t1 or t5; t9:= t2 xor t7; g:= t8 xor t9; t11:= a and t4; t12:= e or t9; f:= t11 xor t12; t14:= a and g; t15:= t2 xor t14; t16:= e and t15; h:= t4 xor t16;
    e:= e xor l_key[4*(i-5)]; f:= f xor l_key[4*(i-5)+1]; g:= g xor l_key[4*(i-5)+2]; h:= h xor l_key[4*(i-5)+3];
    g:= (g shr 22) or (g shl 10); e:= (e shr 5) or (e shl 27); g:= g xor h xor (f shl 7); e:= e xor f xor h; h:= (h shr 7) or (h shl 25); f:= (f shr 1) or (f shl 31); h:= h xor g xor (e shl 3); f:= f xor e xor g; g:= (g shr 3) or (g shl 29); e:= (e shr 13) or (e shl 19);
    t1:= f xor h; t2:= not t1; t3:= e xor g; t4:= g xor t1; t5:= f and t4; a:= t3 xor t5; t7:= e or t2; t8:= h xor t7; t9:= t3 or t8; d:= t1 xor t9; t11:= not t4; t12:= a or d; b:= t11 xor t12; t14:= h and t11; t15:= t3 xor t12; c:= t14 xor t15;
    a:= a xor l_key[4*(i-6)]; b:= b xor l_key[4*(i-6)+1]; c:= c xor l_key[4*(i-6)+2]; d:= d xor l_key[4*(i-6)+3];
    c:= (c shr 22) or (c shl 10); a:= (a shr 5) or (a shl 27); c:= c xor d xor (b shl 7); a:= a xor b xor d; d:= (d shr 7) or (d shl 25); b:= (b shr 1) or (b shl 31); d:= d xor c xor (a shl 3); b:= b xor a xor c; c:= (c shr 3) or (c shl 29); a:= (a shr 13) or (a shl 19);
    t1:= a xor d; t2:= a and b; t3:= b xor c; t4:= a xor t3; t5:= b or d; h:= t4 xor t5; t7:= c or t1; t8:= b xor t7; t9:= t4 and t8; f:= t1 xor t9; t11:= not t2; t12:= h and f; t13:= t9 xor t11; g:= t12 xor t13; t15:= a and d; t16:= c xor t13; e:= t15 xor t16;
    e:= e xor l_key[4*(i-7)]; f:= f xor l_key[4*(i-7)+1]; g:= g xor l_key[4*(i-7)+2]; h:= h xor l_key[4*(i-7)+3];
    g:= (g shr 22) or (g shl 10); e:= (e shr 5) or (e shl 27); g:= g xor h xor (f shl 7); e:= e xor f xor h; h:= (h shr 7) or (h shl 25); f:= (f shr 1) or (f shl 31); h:= h xor g xor (e shl 3); f:= f xor e xor g; g:= (g shr 3) or (g shl 29); e:= (e shr 13) or (e shl 19);
    t1:= e xor h; t2:= g xor h; t3:= not t2; t4:= e or f; c:= t3 xor t4; t6:= f xor t1; t7:= g or t6; t8:= e xor t7; t9:= t2 and t8; b:= t6 xor t9; t11:= not t8; t12:= f and h; t13:= b or t12; d:= t11 xor t13; t15:= t2 xor t12; t16:= b or d; a:= t15 xor t16;
    a:= a xor l_key[4*(i-8)]; b:= b xor l_key[4*(i-8)+1]; c:= c xor l_key[4*(i-8)+2]; d:= d xor l_key[4*(i-8)+3];
    Dec(i,8);
  end;

  PDWord(longword(@OutData)+ 0)^:= a;
  PDWord(longword(@OutData)+ 4)^:= b;
  PDWord(longword(@OutData)+ 8)^:= c;
  PDWord(longword(@OutData)+12)^:= d;
{$I VMProtectEnd.inc}
end;


procedure Init1(const Key);
begin
 {$I VMProtectBegin.inc}
  InitKey(Key,256);
  Zeromemory(@IV[0],16);
//  FillChar(IV,16,0);
  EncryptECB(IV,IV);
  Move(IV,CV,16);
{$I VMProtectEnd.inc}
end;

procedure DecryptCBC(const Indata; var Outdata; Size: longword);
var
  i: longword;
  p1, p2: pointer;
  Temp: array[0..15] of byte;
begin
 {$I VMProtectBegin.inc}
  p1:= @Indata;
  p2:= @Outdata;
  for i:= 1 to (Size div 16) do
  begin
    Move(p1^,p2^,16);
    Move(p1^,Temp,16);
    DecryptECB(p2^,p2^);
    XorBlock(p2^,CV,16);
    Move(Temp,CV,16);
    p1:= pointer(longword(p1) + 16);
    p2:= pointer(longword(p2) + 16);
  end;
  if (Size mod 16)<> 0 then
  begin
    EncryptECB(CV,CV);
    Move(p1^,p2^,Size mod 16);
    XorBlock(p2^,CV,Size mod 16);
  end;
{$I VMProtectEnd.inc}
end;

procedure EncryptCBC(const Indata; var Outdata; Size: longword);
var
  i: longword;
  p1, p2: pointer;
begin
 {$I VMProtectBegin.inc}
  p1:= @Indata;
  p2:= @Outdata;
  for i:= 1 to (Size div 16) do
  begin
    Move(p1^,p2^,16);
    XorBlock(p2^,CV,16);
    EncryptECB(p2^,p2^);
    Move(p2^,CV,16);
    p1:= pointer(longword(p1) + 16);
    p2:= pointer(longword(p2) + 16);
  end;
  if (Size mod 16)<> 0 then
  begin
    EncryptECB(CV,CV);
    Move(p1^,p2^,Size mod 16);
    XorBlock(p2^,CV,Size mod 16);
  end;
{$I VMProtectEnd.inc}
end;

function RegApp1:boolean;
var s: string;
begin
 {$I VMProtectBegin.inc}
  result:=false;
//TBN-Kirov
{$ifdef DEMOV}
  s:=DecryptStr(#53#62#93#201#103#1#155#250#84);
{$else}
  s:=DecryptStr(#109#155#176#162#207#11#193#198#170);
{$endif}
  if (((PLongword(@s[1])^) xor $47894399)=($2D4E4254 xor $47894399)) and
     (((PLongword(@s[5])^) xor $34565689)=($6F72694B xor $34565689)) then
       result:=true;
{$I VMProtectEnd.inc}
end;

function ReadUserBase(UserD: TRxMemoryData):boolean;
const SizeRec=64;
var NumRead: integer;
    df: file;
    buf,buf1: array[0..63] of BYTE;
    s: string;
begin
 {$I VMProtectBegin.inc}
  s:=BaseForm.GisklientPath+'teplo.dll';
  if not UserD.Active then UserD.Open;
  UserD.EmptyTable;
  if not FileExists(s) then
   begin
     result:=false;
     exit;
   end;
  UserD.DisableControls;
  AssignFile(df,s);
  Reset(df, 1);
  NumRead:=SizeRec;
  while NumRead=SizeRec do
   begin
     BlockRead(df,Buf,SizeRec,NumRead);
     if NumRead=SizeRec then
      begin
        Init1(key_pi4);
        DecryptCBC(buf,buf1,64);
        UserD.Append;
        SetLength(s,buf1[61]);
        copymemory(@s[1],@buf1[0],buf1[61]);
        UserD.Fields[0].AsString:=s;

        SetLength(s,buf1[62]);
        copymemory(@s[1],@buf1[10],buf1[62]);
        UserD.Fields[1].AsString:=s;

        SetLength(s,buf1[63]);
        copymemory(@s[1],@buf1[50],buf1[63]);
        UserD.Fields[2].AsString:=s;
        UserD.Fields[3].AsInteger:=buf1[60] and $F;
        UserD.Fields[4].AsBoolean:=((buf1[60]and $50)=$50);
        UserD.Post;
      end;
   end;
  CloseFile(df);
  UserD.EnableControls;
  UserD.First;
  SetLength(s,0);
  result:=(UserD.RecordCount>0);
{$I VMProtectEnd.inc}
end;

procedure SaveUserBase(UserD: TRxMemoryData);
const SizeRec=64;
var i: byte;
    df: file;
    buf,buf1: array[0..63] of byte;
    s: string;
begin
  UserD.DisableControls;
  UserD.First;
  AssignFile(df,BaseForm.GisklientPath+'teplo.dll');
  Rewrite(df, 1);
  while not UserD.Eof do
   begin
     Init1(key_pi4);
     Zeromemory(@buf[0],64);
     s:=UserD.Fields[0].AsString;
     buf[61]:=Length(s);
     copymemory(@buf[0],@s[1],buf[61]);
     s:=UserD.Fields[1].AsString;
     buf[62]:=Length(s);
     copymemory(@buf[10],@s[1],buf[62]);
     s:=UserD.Fields[2].AsString;
     buf[63]:=Length(s);
     copymemory(@buf[50],@s[1],buf[63]);
     i:=UserD.Fields[3].AsInteger;
     if UserD.Fields[4].AsBoolean then i:=i+$50;
     buf[60]:=i;
     EncryptCBC(buf,buf1,64);
     BlockWrite(df,Buf1,SizeRec);
     UserD.Next;
   end;
  CloseFile(df);
  UserD.EnableControls;
end;

procedure CalcHashofPasswd(passwd: string; var Hsh: THash);
var buf: array[0..9] of byte;
begin
  Init1(key_pi4);
  Zeromemory(@buf[0],10);
  copymemory(@buf[0],@passwd[1],Length(passwd));
  DecryptCBC(buf,Hsh,10);
end;

function TestHash(passwd: string; Hsh: THash):boolean;
var buf: THash;
begin
  CalcHashofPasswd(passwd,Buf);
  result:=comparemem(@Buf[0],@Hsh[0],10);
end;

function FindPrevSaveActs(mode:byte): byte; // кол-во ранее сохраненных
var i,j: integer;
    p1: PSaveOldAct;
    Tof: file;
    sr: TSearchRec;
    path1: string;
    firstchar: byte;
    Buf: array[0..31] of byte;
begin
  path1:=BaseForm.GisklientPath+'SaveEdit\';
  if not DirectoryExists(path1) then
   begin
     CreateDir(Path1);
     result:=0;
     exit;
   end else
   begin
      j:=BaseForm.SaveOldActs.Count-1;
      for i:=j downto 0 do
        if Assigned(BaseForm.SaveOldActs.Items[i]) then
         Dispose(PSaveOldAct(BaseForm.SaveOldActs.Items[i]));
      BaseForm.SaveOldActs.Clear;
      if mode>100 then firstchar:=$37
         else if mode>10 then firstchar:=$34
                         else firstchar:=$31;
      firstchar:=firstchar+((mode mod 10) shr 1);
      i:=0;
      if FindFirst(path1+chr(firstchar)+'*.tbn', faAnyFile, sr) = 0 then
        begin
          repeat
            inc(i);
            new(p1);
            AssignFile(ToF, sr.Name);
            ReSet(ToF,1);
            BlockRead(ToF,Buf,32);
            CloseFile(ToF);

            p1^.mode:=Buf[0];
            p1^.id:=Buf[1];
            Setlength(p1^.usern,Buf[2]);
            copymemory(@p1^.usern[1],@Buf[16],Buf[2]);
            p1^.Date1:=PDWord(longword(@Buf)+4)^;
            p1^.Date2:=PDWord(longword(@Buf)+8)^;
            p1^.Date3:=PDWord(longword(@Buf)+28)^;
            p1^.Key:=PDWord(longword(@Buf)+12)^;
            p1^.NameFile:=sr.Name;
            BaseForm.SaveOldActs.Add(p1);
          until FindNext(sr) <> 0;
          SysUtils.FindClose(sr);
        end;
      result:=i;
   end;
end;

procedure TDM.PMenuChartPopup(Sender: TObject);
begin
  aChartAutoMashtab.OnClick:=Nil;
  aChartMax.tag:=Round(TChart(PmenuChart.PopupComponent).LeftAxis.Maximum * 100);
  aChartMax.Caption:=Format(langList[701]+' = %f',[aChartMax.tag / 100]);
  aChartMin.tag:=Round(TChart(PmenuChart.PopupComponent).LeftAxis.Minimum * 100);
  aChartMin.Caption:=Format(langList[702]+' = %f',[aChartMin.tag / 100]);

  if TChart(PmenuChart.PopupComponent).LeftAxis.AutomaticMaximum then
   begin
     aChartAutoMashtab.Checked:=true;
     aChartMin.Enabled:=False;
     aChartMax.Enabled:=False;
   end else
   begin
     aChartAutoMashtab.Checked:=False;
     aChartMin.Enabled:=True;
     aChartMax.Enabled:=True;
   end;
   aChartAutoMashtab.OnClick:=aChartAutoMashtabClick;
end;

function WinExecAndWait32(FileName:String; Visibility : integer):integer;
var
  zAppName:array[0..512] of char;
  zCurDir:array[0..255] of char;
  WorkDir:String;
  StartupInfo:TStartupInfo;
  ProcessInfo:TProcessInformation;
  Rez: cardinal;
begin
  StrPCopy(zAppName,FileName);
  GetDir(0,WorkDir);
  StrPCopy(zCurDir,WorkDir);
  FillChar(StartupInfo,Sizeof(StartupInfo),#0);
  StartupInfo.cb := Sizeof(StartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibility;
  if not CreateProcess(nil,
    zAppName,                      { указатель на строку с командной строкой }
    nil,                           { указатель на атрибуты безопасности процесса }
    nil,                           { указатель на атрибуты безопасности потока }
    false,                         { флаг дескриптора предка }
    CREATE_NEW_CONSOLE or          { флаги создания }
    NORMAL_PRIORITY_CLASS,
    nil,                           { указатель на новый блок среды }
    nil,                           { указатель на имя текущего каталога }
    StartupInfo,                   { указатель на STARTUPINFO }
    ProcessInfo) then Result := -1 { указатель на PROCESS_INF }
   else
    begin
      WaitforSingleObject(ProcessInfo.hProcess,INFINITE);
      GetExitCodeProcess(ProcessInfo.hProcess,Rez);
      Result:=Rez;
     end;
end;

function SQLDate(tmpDate: TDate): string;
var s: string;
begin
  setlength(s,10);
  copymemory(@s[2],PChar(FormatDateTime('yyyymmdd',tmpDate)),8);
  s[1]:=#39;
  s[10]:=#39;
  result:=s;
end;

procedure TDM.ADODataSet2AfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].AsInteger:=BaseForm.maxid_street;
  DataSet.Fields[2].AsString:=langList[748];
  inc(BaseForm.maxid_street);
end;

procedure TDM.ADODataSet2BeforePost(DataSet: TDataSet);
begin
  if DataSet.Fields[1].AsString='' then
   begin
     DataSet.Cancel;
     Abort;
   end;
end;

// var BufSpec: array[0..$20000] of byte;
function DecryptStr(s: string):string;
type
	NTSTATUS = LongInt;
 	PLARGE_INTEGER = ^LARGE_INTEGER;
	TSectionInherit = (ViewNone,ViewShare,ViewUnmap);
	SECTION_INHERIT = TSectionInherit;

	TNtAnsiString = packed record
		Length,MaximumLength:Word;
		Buffer        : PChar;
	end;
	PNtAnsiString = ^TNtAnsiString;
	ANSI_STRING = TNtAnsiString;

	TNtUnicodeString = packed record
		Length,MaximumLength : Word;
		Buffer        : PWideChar;
	end;
	UNICODE_STRING = TNtUnicodeString;
	PNtUnicodeString = ^TNtUnicodeString;

	TNtObjectAttributes =  packed record
		Length                   : ULONG;
		RootDirectory            : THandle;
		ObjectName               : PNtUnicodeString;
		Attributes               : ULONG;
		SecurityDescriptor,SecurityQualityOfService   : Pointer;
	end;
	OBJECT_ATTRIBUTES = TNtObjectAttributes;
	PNtObjectAttributes = ^TNtObjectAttributes;

  TRtlAnsiStringToUnicodeString=function(Dest:PNtUnicodeString;Src:PNtAnsiString;AllocateDestString:Boolean):NTSTATUS; stdcall;
  TRtlInitAnsiString=procedure(DestinationString:PNtAnsiString;SourceString:PChar);stdcall;
  TNtMapViewOfSection= function (SecHandle : THandle;ProcessHandle : THandle;BaseAddress: PDWORD;
      	   ZeroBits:ULONG; CommitSize: ULONG;SectionOffset:PLARGE_INTEGER;ViewSize : DWORD;
      	   InheritDisposition : SECTION_INHERIT;AllocType: ULONG;Protect : ULONG) : NTSTATUS; stdcall;
  TNtUnmapViewOfSection=function(const ProcessHandle: THandle;constBaseAddress:Pointer):NTSTATUS; stdcall;
  TNtOpenSection=function(out SectionHandle:THandle;const DesiredAccess:ACCESS_MASK;ObjectAttributes:PNtObjectAttributes):NTSTATUS; stdcall;
  TGetSystemFirmwareTable=function(s1:DWORD;s2:DWORD;s3:Pointer;s4:DWORD):DWORD; stdcall;
var hmemory,ntdll,vaddress,iSignature,FirmwareTableNameToUse,len,a,b:DWORD;
    UniPhysicalMemory :  TNtUnicodeString;
    AnsiPhysicalMemory : TNtAnsiString ;
    oa :TNtObjectAttributes;
    SectionOffset: LARGE_INTEGER;
    xx: array[0..11] of DWORD;
    key1: array[0..31] of byte;
    buf,buf2: array[0..9] of byte;
    BiosData: array[0..15] of byte absolute xx;
    keyrt: array[0..1] of DWORD;
    BufSpec: array of byte;
    d1,d2: Pointer;
    s1,ComFile,DmpFile,ComSpec,nam: string;
    DmpHandle: THandle;
    si: TStartupInfo;
    pi: TProcessInformation;
    res: boolean;
    CRC,r: byte;
    NtOpenSection:                TNtOpenSection;
    NtMapViewOfSection:           TNtMapViewOfSection;
    RtlInitAnsiString:            TRtlInitAnsiString;
    RtlAnsiStringToUnicodeString: TRtlAnsiStringToUnicodeString;
    NtUnmapViewOfSection:         TNtUnmapViewOfSection;
    GetSystemFirmwareTable:       TGetSystemFirmwareTable;
label moreraz,cashe1;
begin
 {$I VMProtectBegin.inc}
  DM.isdemov:=false;
//  ntdll:=GetModuleHandle('kernel32.dll');
  xx[0]:=$6E72656B;  xx[1]:=$32336C65; xx[2]:=$6C6C642E;  xx[3]:=0;
  xx[4]:=$53746547;  xx[5]:=$65747379; xx[6]:=$7269466D;  xx[7]:=$7261776D;
  xx[8]:=$62615465;  xx[9]:=$0000656C;
  ntdll:=GetModuleHandle(PChar(@xx[0]));
  GetSystemFirmwareTable:=Nil;
//  @GetSystemFirmwareTable:= GetProcAddress(ntdll,'GetSystemFirmwareTable');
  @GetSystemFirmwareTable:= GetProcAddress(ntdll,PChar(@xx[4]));
  res:=false;
  if Assigned(GetSystemFirmwareTable) then
   begin
     iSignature:=$46000000 or $00490000 or $00005200 or $0000004D ; //FIRM
     FirmwareTableNameToUse:=$E0000;
     len:=$20000;
     Setlength(BufSpec,len);
     Zeromemory(@BufSpec[0],len);
     GetSystemFirmwareTable(iSignature,FirmwareTableNameToUse,@BufSpec[0],len);
     CopyMemory(@BiosData[0],@BufSpec[$FFFF0-$E0000],16);
     Setlength(BufSpec,0);
     res:=true;
   end else
   begin
//     ntdll:=GetModuleHandle('ntdll.dll');
     xx[0]:=$6C64746E;  xx[1]:=$6C642E6C;   xx[2]:=$0000006C;
     ntdll:=GetModuleHandle(PChar(@xx[0]));
//     @NtOpenSection:=                GetProcAddress(ntdll,'NtOpenSection');
     xx[4]:=$74636553;  xx[5]:=$006E6F69;  xx[2]:=$744E0000;   xx[3]:=$6E65704F;
     @NtOpenSection:=                GetProcAddress(ntdll,PChar(@BiosData[10]));
//     @NtMapViewOfSection:=           GetProcAddress(ntdll,'NtMapViewOfSection');
     xx[2]:=$69567061;  xx[3]:=$664F7765;   xx[1]:=$4D744E00;
     @NtMapViewOfSection:=           GetProcAddress(ntdll,PChar(@BiosData[5]));
//     @NtUnmapViewOfSection:=         GetProcAddress(ntdll,'NtUnmapViewOfSection');
     xx[0]:=$4E000000;  xx[1]:=$6D6E5574;
     @NtUnmapViewOfSection:=         GetProcAddress(ntdll,PChar(@BiosData[3]));
//     @RtlInitAnsiString:=            GetProcAddress(ntdll,'RtlInitAnsiString');
     xx[2]:=$69736E41;  xx[3]:=$69727453;  xx[4]:=$0000676E;
     xx[0]:=$6C745200;  xx[1]:=$74696E49;
     @RtlInitAnsiString:=            GetProcAddress(ntdll,PChar(@BiosData[1]));
//     @RtlAnsiStringToUnicodeString:= GetProcAddress(ntdll,'RtlAnsiStringToUnicodeString');
     xx[1]:=xx[0];  xx[4]:=$6F54676E;   xx[5]:=$63696E55;
     xx[6]:=$5365646F;  xx[7]:=$6E697274;  xx[8]:=$00000067;
     @RtlAnsiStringToUnicodeString:= GetProcAddress(ntdll,PChar(@BiosData[5]));
     xx[0]:=$7665645C;  xx[1]:=$5C656369;   xx[2]:=$73796870;
     xx[3]:=$6C616369;  xx[4]:=$6F6D656D;   xx[5]:=$00007972;
//     RtlInitAnsiString(@AnsiPhysicalMemory, '\device\physicalmemory');
     RtlInitAnsiString(@AnsiPhysicalMemory, PChar(@xx[0]));
     RtlAnsiStringToUnicodeString(@UniPhysicalMemory, @AnsiPhysicalMemory, true);
      with oa do
       begin
         Length := SizeOf(TNtObjectAttributes);
         ObjectName := @UniPhysicalMemory;
         Attributes := $00000040;
         RootDirectory := 0;
         SecurityDescriptor := nil;
         SecurityQualityOfService := nil;
       end;
      if NtOpenSection(hmemory,SECTION_MAP_READ, @oa)=0 then
       begin
          if hmemory>0 then
           begin
             SectionOffset.HighPart := 0;
             vaddress:=0;
             SectionOffset.LowPart:=$FFFF0;
             Len:=16;
             if NtMapViewOfSection(hmemory,$FFFFFFFF,@vaddress, 0,16,@SectionOffset,DWORD(@Len), ViewShare, 0, PAGE_READONLY)=0 then
              begin
                if SectionOffset.LowPart<>$ffff0 then Len:=$ffff0-SectionOffset.LowPart
                  else Len:=0;
                CopyMemory(@BiosData[0],Pointer(vaddress+Len),16);
                res:=true;
              end;
           end;
          NtUnmapViewOfSection(0, @vaddress);
          CloseHandle(hmemory);
       end;
       if not res then
        begin
          len:=GetTickCount();
          if (DM.LastReadTime>0) and // было считывание
              ((DM.LastReadTime+(5000*60))>len) then // не прошло 5 минут
           begin
{$ifdef myDBG} OutputDebugString('Read Cashe'); {$endif}
             len:=DM.hashBD;
             goto cashe1;
           end else DM.LastReadTime:=len;

{$ifdef myDBG} OutputDebugString('Not NtOpenSection. Run Com'); {$endif}

          SetLength(s1, MAX_PATH);
          SetLength(s1, GetTempPath(MAX_PATH, PChar(@s1[1])));
          if Length(s1)>0 then
           begin
             if (s1[Length(s1)]<>'\') then s1:=s1+'\';
           end
           else s1:=ExtractfilePath(Application.ExeName);
          ComFile := s1+'9.com';
          DmpFile := s1+'9.co';
          ntdll:=0;
          xx[4]:=$7221CD40;   xx[5]:=$B6D23116;   xx[6]:=$31DA8EF0;  xx[7]:=$C9314AD2;
          xx[8]:=$B4CB8941;   xx[9]:=$7221CD40;   xx[10]:=$B400B002;  xx[11]:=$0021CD4C;
moreraz:
          xx[0]:=$8EF000BA;   xx[1]:=$FFF0BADA;   xx[2]:=$0FB1C931;  xx[3]:=$B443DB31;
          try
            DmpHandle:=CreateFile(PChar(ComFile), GENERIC_WRITE, FILE_SHARE_READ, nil,CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0);
            if DmpHandle <> INVALID_HANDLE_VALUE then
             try
               Res:=WriteFile(DmpHandle,xx,47,len,nil) and (len=47);
               if not Res then DeleteFile(PChar(ComFile));
             finally
              CloseHandle(DmpHandle);
             end;
            if res then
            try
              Res:=false;
              SetLength(ComSpec, MAX_PATH);
              SetLength(ComSpec, GetEnvironmentVariable('ComSpec', PChar(@ComSpec[1]), MAX_PATH));
              if Length(ComSpec) > 0 then
               begin
                  FillChar(si, SizeOf(TStartupInfo),0);
                  si.cb := SizeOf(TStartupInfo);
                  si.dwFlags := STARTF_USESHOWWINDOW;
                  si.wShowWindow := SW_HIDE;
                  if CreateProcess(nil, PChar(ComSpec + ' /C ' + ComFile + ' > ' + DmpFile),
                    nil, nil, False, CREATE_NEW_CONSOLE or CREATE_NEW_PROCESS_GROUP, nil,nil, si, pi) then
                  try
                    sleep(50);
                    Res:=WaitForSingleObject(pi.hProcess,500) <> WAIT_TIMEOUT;
                    if not Res then
                     begin
                       Res:=WaitForSingleObject(pi.hProcess,1500) <> WAIT_TIMEOUT;
{$ifdef myDBG} OutputDebugString('Wait 1500'); {$endif}
                     end;
                  finally
                    CloseHandle(pi.hProcess);
                    CloseHandle(pi.hThread);
                  end;
               end;
              if Res then
               begin
                 res:=false;
                  DmpHandle := CreateFile(PChar(DmpFile), GENERIC_READ,
                    FILE_SHARE_READ or FILE_SHARE_WRITE, nil, OPEN_EXISTING, 0, 0);
                  if DmpHandle <> INVALID_HANDLE_VALUE then
                  try
                    Zeromemory(@BiosData[0],16);
                    Res:=ReadFile(DmpHandle,BiosData,16,hmemory, nil) and (hmemory=16);
                  except
                     res:=false;
                  end;
                  CloseHandle(DmpHandle);
               end;
            finally
              DeleteFile(PChar(DmpFile));
              DeleteFile(PChar(ComFile));
            end;
          finally
          end;
         if (not res) and (ntdll=0) then
          begin
            sleep(50);
            inc(ntdll);
            goto moreraz;
          end;
//         res:=ReadRomBios16My(BiosData,500,ExtractfilePath(Application.ExeName));
//         if not res then res:=ReadRomBios16My(BiosData,500,ExtractfilePath(Application.ExeName));
       end;
   end; // not Assigned(GetSystemFirmwareTable) then

{  s:='';
	for Len:=0 to 15 do s:=s+'$'+Inttohex(BiosData[Len],2)+' ';
  Memo1.Lines.Add(s);
  BiosData[13]:=0;
  Memo1.Lines.Add(PChar(@BiosData[5]));
}
  len:=1315423911;
  for ntdll:=0 to 15 do
   len:=len xor DWORD((len shl 5) + Ord(BiosData[ntdll]) + (len shr 2));
  if DM.LastReadTime>0 then DM.hashBD:=len;
cashe1:
  Init1(key_pi4);
  PLongword(@buf[0])^:=len;
  PLongword(@buf[4])^:=len xor $214E4254;
  Pword(@buf[8])^:=len and $1978;
  DecryptCBC(buf,buf2,10); // в buf2 у нас MashineID

  PLongword(@key1[0])^:=PLongword(@buf2[0])^;
  PLongword(@key1[4])^:=PLongword(@buf2[4])^;
  Pword(@key1[8])^:=Pword(@buf2[8])^;

// ключ для проги за исключением первых 10 байт
{$ifdef DEMOV}
    PLongword(@key1[10])^:=$11E9AD15;
    PLongword(@key1[14])^:=$C618638C;
    PLongword(@key1[18])^:=$26638C31;
    PLongword(@key1[22])^:=$D52AC282;
    PLongword(@key1[26])^:=$6A76268B;
    Pword(@key1[30])^    :=$5521;
{$else}
  PLongword(@key1[10])^:=$F794B5FF;
  PLongword(@key1[14])^:=$E857FFFF;
  PLongword(@key1[18])^:=$FFFFFCB5;
  PLongword(@key1[22])^:=$1E46B70F;
  PLongword(@key1[26])^:=$90685350;
  Pword(@key1[30])^    :=$41F3;
{$endif}

// Теперь по лицензии пробуем получить первые 10 байт ключа
  Init1(key1);
  PLongword(@buf[0])^:=PLongword(@regkey[0])^;
  PLongword(@buf[4])^:=PLongword(@regkey[4])^;
  Pword(@buf[8])^    :=PLongword(@regkey[8])^;
  DecryptCBC(buf,buf2,10); // buf-первые 10 байт от key_prog - CONST - ключ шифрования

// но у нас теперь не 10 байт в чистом виде, а модернизированные за счет количества счетчиков
{$ifdef DEMOV}
      keyrt[0]:=$19780901;
      keyrt[1]:=$9EB13817;
      r:=39;
      a:=PLongWord(@Buf2[0])^;
      b:=PLongWord(@Buf2[4])^;
      while true do
       begin
         b:=b-( a+((a shl 6) xor (a shr 8))+keyrt[r and 1]+r);
         dec(r);
         a:=a-(b+((b shl 6) xor (b shr 8))+keyrt[r and 1]+r);
         if r=0 then break else dec(r);
       end;
      PLongWord(@Buf2[0])^:=a;
      PLongWord(@Buf2[4])^:=b;
// проверяем CRC, вычленяем кол-во счетчиков и т.п.
      CRC:=$FF;
      for r:=8 downto 0 do
       begin
         CRC:=CRC xor buf2[r];
         for a:=0 to 7 do
          begin
            if (CRC and $80)<>0
              then CRC:=BYTE(CRC shl 1) xor $31
              else CRC:=CRC shl 1;
          end;
       end;
  if (buf2[9]=CRC) then
   begin
    DM.countdom:=(buf2[0] xor $14)+((buf2[1] xor $A7) shl 8);
    DM.countkv:=(buf2[6] xor $14)+((buf2[5] xor $A7) shl 8);
    if (DM.countdom=3) and (DM.countkv=0) then DM.isdemov:=true;
    Pword(@buf2[0])^    :=$2118;
    Pword(@buf2[5])^    :=$6016;
    buf2[9]:=$F8;
   end else
   begin
     DM.countdom:=0;
     DM.countkv:=0;
     PLongword(@buf2[0])^:=$D52AC282;
     PLongword(@buf2[4])^:=$6A76268B;
   end;
{$endif}
  PLongword(@key1[0])^:=PLongword(@buf2[0])^;
  PLongword(@key1[4])^:=PLongword(@buf2[4])^;
  Pword(@key1[8])^:=Pword(@buf2[8])^;
  Init1(key1);
  len:=length(s);
  setlength(nam,len);
  d1:=@s[1];
  d2:=@nam[1];
  EncryptCBC(d1^,d2^,len);
  Result:=nam;
{$I VMProtectEnd.inc}
end;

procedure TDM.t_sobkspdAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].AsInteger:=BaseForm.maxid_sob;
  inc(BaseForm.maxid_sob);
end;

procedure TDM.t_sobkspdBeforePost(DataSet: TDataSet);
begin
  if DataSet.Fields[1].AsString='' then
   begin
     DataSet.Cancel;
     Abort;
   end;
end;


procedure TDM.t_kspdBeforePost(DataSet: TDataSet);
begin
  if DataSet.Fields[0].IsNull then
   begin
     DataSet.Cancel;
     Abort;
   end;
end;

procedure TDM.t_eldomAfterInsert(DataSet: TDataSet);
begin
  if t_building.Fields[0].AsInteger>0 then
   begin
     DataSet.Fields[0].AsInteger:=t_building.Fields[0].AsInteger;
     DataSet.Fields[2].AsInteger:=19;
     DataSet.Fields[3].AsInteger:=1;
     DataSet.Fields[5].AsInteger:=10;
     DataSet.Fields[8].AsInteger:=1;
     BaseForm.GridElDom.Columns[4].ReadOnly:=false;
     BaseForm.GridElDom.Columns[5].ReadOnly:=false;
     BaseForm.GridElDom.Columns[6].ReadOnly:=true;
   end else DataSet.Cancel;
end;

procedure TDM.t_eldomAfterScroll(DataSet: TDataSet);
var act1: boolean;
begin
  act1:=(Dataset.Fields[2].AsInteger=2);
  BaseForm.GridElDom.Columns[4].ReadOnly:=act1;
  BaseForm.GridElDom.Columns[5].ReadOnly:=act1;
  BaseForm.GridElDom.Columns[6].ReadOnly:=act1;
end;

procedure TDM.t_eldomBeforePost(DataSet: TDataSet);
begin
  if (t_eldom.Fields[1].IsNull) or (t_eldom.Fields[3].IsNull) then
       begin
         t_eldom.Cancel;
         Abort;
       end else
    begin
     if t_eldom.Fields[3].AsInteger=1 then t_eldom.Fields[6].Clear
      else if t_eldom.Fields[3].AsInteger=2 then
       begin
         t_eldom.Fields[4].Clear;
         t_eldom.Fields[5].Clear;
       end;
    end;
end;

procedure StrToClipbrd(StrValue: string);
var
  hMem: THandle;
  pMem: PChar;
begin
  hMem := GlobalAlloc(GHND or GMEM_SHARE, Length(StrValue) + 1);
  if hMem <> 0 then
  begin
    pMem := GlobalLock(hMem);
    if pMem <> nil then
    begin
      StrPCopy(pMem, StrValue);
      GlobalUnlock(hMem);
      if OpenClipboard(0) then
      begin
        EmptyClipboard;
        SetClipboardData(CF_TEXT, hMem);
        CloseClipboard;
      end
      else
        GlobalFree(hMem);
    end
    else
      GlobalFree(hMem);
  end;
end;

// возращает маску используемых переменных по всем счетчикам
function RazborFunction(s: string; var TmpList1: TIntegerAssociationList): dword;
var PIPU: PInfoPUFormula;
    k,nompar,perv2sim,begzn,pnomp: word;
    idcnt,i,j: integer;
    ch1,ch2: char;
begin
  DestroyPUFormulaList(false,TmpList1);
  k:=length(s);
  if k=0 then exit;
  PIPU:=Nil;
  s:=s+'#';
//  s:=LowerCase(s)+'#';
  inc(k);
  i:=1;
  pnomp:=1; // порядковый номер параметра в формуле
  while i<k do
   begin // бежим по формуле
     if (s[i]='_') then
      begin
        nompar:=100;
        if i>2 then
         begin
           begzn:=i-2;
           perv2sim:=(ord(s[i-2]) shl 8)+ord(s[i-1]);
           for j:=0 to 13 do
            if perv2sim=vozmper[j] then
             begin
               nompar:=j;
               break;
             end;
         end;
        idcnt:=0;
        for j:=i+1 to k do
         if (s[j]>#47) and (s[j]<#58) then idcnt:=idcnt*10+(ord(s[j])-48)
          else
           begin
             if nompar<100 then
              begin
                 if (Assigned(PIPU)) and (PIPU^.id_cnt=idcnt) then
                  else
                   begin
                     PIPU:=TmpList1.Items[idcnt];
                     if not Assigned(PIPU) then
                      begin // не нашли - создаем
                        New(PIPU);
                        PIPU^.id_cnt:=idcnt;
                        PIPU^.countpol:=0;
                        TmpList1.Add(idcnt,PIPU);
                      end;
                   end; //
                perv2sim:=PIPU^.countpol;
                PIPU^.nompole[perv2sim]:=begzn; // где начинается в формуле
                PIPU^.idx[perv2sim]:=nompar;
                PIPU^.countpol:=perv2sim+1;
              end; // if nompar<100 then
             i:=j;
             break;
           end;
      end; // if (s[i]='_') then
     inc(i);
   end; // while
end;

{
Вывести поля M1,M2,Q,Twork для счетчика 19069
Вывести поля V1,Q,twork для счетчика 18138
Вывести поля Q,Twork для счетчика 18037
за диапазон дат с 01.01.2004 по 15.01.2004

SELECT a.Truedate,
  SUM(CASE a.id_counter WHEN 19069 THEN a.m1 ELSE 0 END) AS m1_19069,
  SUM(CASE a.id_counter WHEN 19069 THEN a.m2 ELSE 0 END) AS m2_19069,
  SUM(CASE a.id_counter WHEN 19069 THEN a.q ELSE 0 END) AS q1_19069,
  SUM(CASE a.id_counter WHEN 19069 THEN a.Twork ELSE 0 END) AS Tw_19069,
  SUM(CASE a.id_counter WHEN 18138 THEN a.V1 ELSE 0 END) AS v1_18138,
  SUM(CASE a.id_counter WHEN 18138 THEN a.Q ELSE 0 END) AS  Q1_18138,
  SUM(CASE a.id_counter WHEN 18138 THEN a.Twork ELSE 0 END) AS Tw_18138,
  SUM(CASE a.id_counter WHEN 18037 THEN a.Q ELSE 0 END) AS Q1_18037,
  SUM(CASE a.id_counter WHEN 18037 THEN a.Twork ELSE 0 END) AS Tw_18037
FROM (select Truedate,id_counter,M1,M2,Q,Twork,V1 from t_day where
id_counter in (19069,18138,18037) and Truedate between '20040101' and '20040115'
) a GROUP BY a.Truedate ORDER BY a.Truedate
}
function CreateZaprosFormula(type_arh: byte;TmpList1: TIntegerAssociationList; var newzap: string): string;
var s,s1,sdate,snumcntr,snumcntrs,s2,s3,s4: string;
  i,j,k,posx: integer;
  xx1,xx2,len1: word;
  maska: dword;
  PIPU: PInfoPUFormula;
  ch: char;
label snova1,snova2;
begin
  s:='';
  s2:=newzap+' ';
  xx1:=TmpList1.Count;
  if xx1>0 then
   begin
{     if type_arh=0 then
     sdate:='between '#39+FormatDateTime('yyyymmdd hh:00:00',Date1)+#39' and '#39+FormatDateTime('yyyymmdd hh:00:00',Date2)
     else sdate:='between '+SQLDate(Date1)+' and '+SQLDate(Date2);
}
     if xx1=1 then
      begin // один счетчк
        PIPU:=PInfoPUFormula(TmpList1.ValueList[0]);
        s:='select Truedate,Twork';
        xx2:=PIPU^.countpol-1;
        PIPU^.numtw:=1;
        snumcntr:=InttoStr(PIPU^.id_cnt);
        len1:=Length(snumcntr)+4;
        for i:=0 to xx2 do
         begin
           if PIPU^.idx[i]<>13 then
            begin
              s:=s+','+npol[PIPU^.idx[i]];
              PIPU^.nomCOLzapr[i]:=i+2;
            end else PIPU^.nomCOLzapr[i]:=1;
            s4:=npol1[PIPU^.idx[i]]+'_'+snumcntr;
            snova1:
            posx:=pos(s4,s2);
            if (posx>0) and ((s2[posx+len1]<'0') or (s2[posx+len1]>'9')) then
             begin
               s2[posx]:='X';
               if PIPU^.nomCOLzapr[i]>9 then s2[posx+1]:=chr(55+PIPU^.nomCOLzapr[i])
                else s2[posx+1]:=chr($30+PIPU^.nomCOLzapr[i]);
               delete(s2,posx+2,len1-3);
               goto snova1;
             end;
         end;
        s:=s+' from '+NamTablesArhiv[type_arh+1]+' where id_counter='+snumcntr+' and Truedate between ';//+sdate;
      end  else
      begin // несколько счетчиков
        s:='select a.Truedate,';
        maska:=0;
        snumcntrs:='';
        k:=1;
        for i:=0 to xx1-1 do
         begin
           PIPU:=PInfoPUFormula(TmpList1.ValueList[i]);
           xx2:=PIPU^.countpol-1;
           snumcntr:=Inttostr(PIPU^.id_cnt);
           len1:=Length(snumcntr)+4;
           snumcntrs:=snumcntrs+','+snumcntr;
           if k<10 then ch:=chr(k+48) else ch:=chr(k+55);
           PIPU^.numtw:=k;
           s:=s+'SUM(CASE a.id_counter WHEN '+snumcntr+' THEN a.Twork ELSE 0 END) AS par'+ch+',';
           inc(k);
           for j:=0 to xx2 do
            begin
              if PIPU^.idx[j]<>13 then
               begin
                 if k<10 then ch:=chr(k+48) else ch:=chr(k+55);
                 PIPU^.nomCOLzapr[j]:=k;
                 maska:=Q_BitSet32(maska,PIPU^.idx[j]); // выставляем бит присутствия
                 inc(k);
                 s:=s+'SUM(CASE a.id_counter WHEN '+snumcntr+' THEN a.'+npol[PIPU^.idx[j]]+' ELSE 0 END) AS par'+ch+',';
               end else PIPU^.nomCOLzapr[j]:=PIPU^.numtw;
              s4:=npol1[PIPU^.idx[j]]+'_'+snumcntr;
              snova2:
              posx:=pos(s4,s2);
              if (posx>0) and ((s2[posx+len1]<'0') or (s2[posx+len1]>'9')) then
               begin
                 s2[posx]:='X';
                 if PIPU^.nomCOLzapr[j]>9 then s2[posx+1]:=chr(55+PIPU^.nomCOLzapr[j])
                  else s2[posx+1]:=chr($30+PIPU^.nomCOLzapr[j]);
                 delete(s2,posx+2,len1-3);
                 goto snova2;
               end;
             end;
         end;
        snumcntrs[1]:='(';
        s[length(s)]:=' ';
        snumcntr:='';
        for j:=0 to 12 do if Q_BitTest32(maska,j) then snumcntr:=snumcntr+','+npol[j];
        s:=s+'from (select Truedate,id_counter,Twork'+snumcntr+' from '+
        NamTablesArhiv[type_arh+1]+' where id_counter in '+snumcntrs+') and Truedate between ';
//        +sdate+') a GROUP BY a.Truedate ORDER BY a.Truedate';
      end; // несколько счетчиков
   end;
  newzap:=Trim(s2);
  result:=s;
end;

function TDM.tmpFormulaGetExternalData(AName: String; var AData: Real;
  var SData: String): Boolean;
var idx: byte;
begin
  if Aname[1]='X' then
   begin
     idx:=ord(Aname[2])-$30;
     if idx>9 then idx:=idx-(55-$30);
     if idx<20 then
      begin
        AData:=abszn[idx];
        result:=true;
      end;
   end;
end;

procedure TDM.ADOConnection1ExecuteComplete(Connection: TADOConnection;
  RecordsAffected: Integer; const Error: Error;
  var EventStatus: TEventStatus; const Command: _Command;
  const Recordset: _Recordset);

function OpenConn: boolean;
  begin
    try
      Connection.Open;
      Result := true;
    except
      Result := false;
    end;
  end;

procedure Delay(dwMilliseconds: Cardinal);
var Start: Cardinal;
begin
  Start := GetTickCount;
  repeat
      Application.ProcessMessages;
  until (GetTickCount - Start) >= dwMilliseconds;
end;

var
  I: Integer;
  List: TList;
begin
if (EventStatus = esErrorsOccured) and (Error.Number = -2147467259) then
  begin
     BaseForm.otpalSQL:=true;
     BaseForm.MessageToLOG('Потеряна связь с SQL Сервером');
     BaseForm.MessageToLOG(Error.Description+' '+Command.CommandText);

     PForm.Text:='Потеряна связь с SQL Сервером. Пробуем восстановить...';
     PForm.Position:=0;
     PForm.Max:=8;
     Screen.Cursor:=crHourGlass;
    try
      List := TList.Create;
      try
         for I := 0 to Connection.DataSetCount - 1 do
         List.Add(Connection.DataSets[I]);
        while Connection.DataSetCount > 0 do
         begin
           Connection.DataSets[0].Connection := nil;
//           if Connection.DataSets[0].Active then Connection.DataSets[0].Close;
         end;
        Connection.Close;
        Connection.ConnectionString:=sConString;
        while not OpenConn do
         begin
           Delay(4000);
           PForm.IncPosition;
           if PForm.Position=7 then PForm.Position:=0;
         end;
        PForm.Visible:=false;
        for I := 0 to List.Count - 1 do
         begin
           TCustomADODataSet(List[I]).Connection := Connection;
           if TCustomADODataSet(List[I]).Active then
            TCustomADODataSet(List[I]).Close;
         end;
        List.Clear;
        BaseForm.ReopenDataSets;
      finally
        List.Free;
      end;
    finally
       EventStatus:=esOK;
//       showmessage('CT:'+Command.CommandText+' Name:'+Command.Name+' 1234 '+Error.Description);
       Screen.Cursor:=crDefault;
       PForm.Visible:=false;
       BaseForm.otpalSQL:=false;
// [DBNETLIB][ConnectionWrite (WrapperWrite()).]Общая ошибка сети. Обратитесь к документации по сети
    end;
  end else
  begin
     BaseForm.MessageToLOG(Inttostr(Error.Number));
  end;
end;

procedure TDM.t_groupAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].AsInteger:=TekNumGr;
  inc(TekNumGr);
end;

procedure TDM.spr_orgAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].AsInteger:=TekNumOrg;
  inc(TekNumOrg);
end;

procedure TDM.spr_objAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].AsInteger:=TekNumLvl;
  inc(TekNumLvl);
end;

procedure TDM.spr_distAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].AsInteger:=TekNumRaion;
  DataSet.Fields[2].AsString:='-'; // код окато
  inc(TekNumRaion);
end;

end.
