.class public Lcom/infraware/registration/UserRegistrationActivity;
.super Landroid/app/Activity;
.source "UserRegistrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/registration/UserRegistrationActivity$MyWebClient;
    }
.end annotation


# static fields
.field private static final EH_CONNECT_CHECK:I = 0x384

.field private static final EH_CONNECT_NETWORK:I = 0x3e8

.field private static final EH_FORM_CLOSE:I = 0x5dc

.field private static final EH_NETWORK_ERROR:I = 0x514

.field private static final EH_NO_RESPONSE_SERVER_ERROR:I = 0x578

.field private static final EH_USER_REGISTER_FAIL:I = 0x4b0

.field private static final EH_USER_REGISTER_SUCCESS:I = 0x44c

.field private static final POPUP_MSG:I = 0xfa0

.field private static final POPUP_NETWORK_ERROR:I = 0xbb8

.field private static final POPUP_USER_REGISTER:I = 0x7d0

.field private static final USER_INFO_URL:Ljava/lang/String; = "http://polarisoffice.infraware.co.kr/dmweb/AddUserInfo.aspx?"


# instance fields
.field public mEventHandler:Landroid/os/Handler;

.field private mNetErrDialog:Landroid/app/AlertDialog;

.field private mPopupDialog:Landroid/app/AlertDialog;

.field private mPopupMsg:I

.field private mUserRegisterDialog:Landroid/app/AlertDialog;

.field private m_bAfterWeekCheck:Z

.field private m_bNetErrAutoRegister:Z

.field private m_bUserRegisterSuccess:Z

.field private m_btnLater:Landroid/widget/Button;

.field private m_btnRegister:Landroid/widget/Button;

.field private m_checkAfterWeek:Landroid/widget/CheckBox;

.field private m_etEmail:Landroid/widget/EditText;

.field private m_etName:Landroid/widget/EditText;

.field private m_nFailValue:I

.field public m_oContext:Landroid/app/Activity;

.field private m_oLocaleType:Ljava/util/Locale;

.field m_oToast:Landroid/widget/Toast;

.field private m_strEmail:Ljava/lang/String;

.field private m_strName:Ljava/lang/String;

.field private m_tvInfo1:Landroid/widget/TextView;

.field private m_tvInfo2:Landroid/widget/TextView;

.field private m_tvRegistringMsg:Landroid/widget/TextView;

.field private mgr:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etName:Landroid/widget/EditText;

    .line 65
    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etEmail:Landroid/widget/EditText;

    .line 66
    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_tvInfo1:Landroid/widget/TextView;

    .line 67
    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_tvInfo2:Landroid/widget/TextView;

    .line 68
    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_checkAfterWeek:Landroid/widget/CheckBox;

    .line 69
    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_btnLater:Landroid/widget/Button;

    .line 70
    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_btnRegister:Landroid/widget/Button;

    .line 72
    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_tvRegistringMsg:Landroid/widget/TextView;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_strName:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_strEmail:Ljava/lang/String;

    .line 76
    iput-boolean v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_bAfterWeekCheck:Z

    .line 78
    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->mEventHandler:Landroid/os/Handler;

    .line 80
    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->mUserRegisterDialog:Landroid/app/AlertDialog;

    .line 81
    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->mNetErrDialog:Landroid/app/AlertDialog;

    .line 82
    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->mPopupDialog:Landroid/app/AlertDialog;

    .line 84
    iput-boolean v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_bUserRegisterSuccess:Z

    .line 85
    iput-boolean v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_bNetErrAutoRegister:Z

    .line 86
    iput v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_nFailValue:I

    .line 88
    iput v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->mPopupMsg:I

    .line 90
    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oLocaleType:Ljava/util/Locale;

    .line 93
    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oToast:Landroid/widget/Toast;

    .line 95
    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->mgr:Landroid/view/inputmethod/InputMethodManager;

    .line 48
    return-void
.end method

.method private GetRegistryData()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 491
    const-string v2, "user_registration"

    invoke-virtual {p0, v2, v4}, Lcom/infraware/registration/UserRegistrationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 493
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "UserRegisterName"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_strName:Ljava/lang/String;

    .line 494
    const-string v2, "UserRegisterEmail"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_strEmail:Ljava/lang/String;

    .line 496
    const-string v2, "AutoUserRegister"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 498
    .local v0, bAutoRegister:Z
    return v0
.end method

.method private SetAddBtnStatus()V
    .locals 4

    .prologue
    .line 438
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, email:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 445
    invoke-virtual {p0, v0}, Lcom/infraware/registration/UserRegistrationActivity;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_btnRegister:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 451
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_btnRegister:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private SetEventHandler()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/registration/UserRegistrationActivity$1;-><init>(Lcom/infraware/registration/UserRegistrationActivity;)V

    iput-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mEventHandler:Landroid/os/Handler;

    .line 290
    return-void
.end method

.method private SetRegistryData(Z)V
    .locals 6
    .parameter "bShowAfterWeek"

    .prologue
    .line 460
    const-string v4, "user_registration"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/infraware/registration/UserRegistrationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 461
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 464
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1

    .line 465
    const-string v4, "UserRegisterShowAfterWeek"

    iget-boolean v5, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_bAfterWeekCheck:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 467
    iget-boolean v4, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_bAfterWeekCheck:Z

    if-eqz v4, :cond_0

    .line 468
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 469
    .local v0, cCurTime:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, strCurTime:Ljava/lang/String;
    const-string v4, "UserRegisterCurTime"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 487
    .end local v0           #cCurTime:Ljava/util/Calendar;
    .end local v3           #strCurTime:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 488
    return-void

    .line 475
    :cond_1
    iget-boolean v4, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_bNetErrAutoRegister:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_bUserRegisterSuccess:Z

    if-eqz v4, :cond_3

    .line 476
    :cond_2
    const-string v4, "UserRegisterName"

    iget-object v5, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_strName:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 477
    const-string v4, "UserRegisterEmail"

    iget-object v5, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_strEmail:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 483
    :goto_1
    const-string v4, "UserRegisterSuccess"

    iget-boolean v5, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_bUserRegisterSuccess:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 485
    const-string v4, "AutoUserRegister"

    iget-boolean v5, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_bNetErrAutoRegister:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 479
    :cond_3
    const-string v4, "UserRegisterName"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 480
    const-string v4, "UserRegisterEmail"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/infraware/registration/UserRegistrationActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mUserRegisterDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/registration/UserRegistrationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/infraware/registration/UserRegistrationActivity;->makeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/infraware/registration/UserRegistrationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/infraware/registration/UserRegistrationActivity;->SetAddBtnStatus()V

    return-void
.end method

.method static synthetic access$11(Lcom/infraware/registration/UserRegistrationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_bAfterWeekCheck:Z

    return-void
.end method

.method static synthetic access$12(Lcom/infraware/registration/UserRegistrationActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$13(Lcom/infraware/registration/UserRegistrationActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etEmail:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$14(Lcom/infraware/registration/UserRegistrationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_strName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/infraware/registration/UserRegistrationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_strEmail:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/infraware/registration/UserRegistrationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_bNetErrAutoRegister:Z

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/registration/UserRegistrationActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_strName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/registration/UserRegistrationActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_strEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/registration/UserRegistrationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_bUserRegisterSuccess:Z

    return-void
.end method

.method static synthetic access$5(Lcom/infraware/registration/UserRegistrationActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_nFailValue:I

    return-void
.end method

.method static synthetic access$6(Lcom/infraware/registration/UserRegistrationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lcom/infraware/registration/UserRegistrationActivity;->SetRegistryData(Z)V

    return-void
.end method

.method static synthetic access$7(Lcom/infraware/registration/UserRegistrationActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 86
    iget v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_nFailValue:I

    return v0
.end method

.method static synthetic access$8(Lcom/infraware/registration/UserRegistrationActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput p1, p0, Lcom/infraware/registration/UserRegistrationActivity;->mPopupMsg:I

    return-void
.end method

.method static synthetic access$9(Lcom/infraware/registration/UserRegistrationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/infraware/registration/UserRegistrationActivity;->onToastMessage(Ljava/lang/String;)V

    return-void
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 305
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/infraware/registration/UserRegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etName:Landroid/widget/EditText;

    .line 306
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/infraware/registration/UserRegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etEmail:Landroid/widget/EditText;

    .line 308
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/infraware/registration/UserRegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_tvInfo1:Landroid/widget/TextView;

    .line 309
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/infraware/registration/UserRegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_tvInfo2:Landroid/widget/TextView;

    .line 310
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_tvInfo2:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 312
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/infraware/registration/UserRegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_checkAfterWeek:Landroid/widget/CheckBox;

    .line 314
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/infraware/registration/UserRegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_btnLater:Landroid/widget/Button;

    .line 315
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/infraware/registration/UserRegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_btnRegister:Landroid/widget/Button;

    .line 316
    return-void
.end method

.method private makeMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "str"

    .prologue
    .line 408
    const/4 v2, 0x0

    .line 411
    .local v2, md:Ljava/security/MessageDigest;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 417
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 418
    :cond_0
    const-string v6, ""

    .line 428
    :goto_0
    return-object v6

    .line 412
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 413
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 414
    const-string v6, ""

    goto :goto_0

    .line 420
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 421
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 422
    .local v4, md5Code:[B
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 423
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v4

    if-lt v1, v6, :cond_2

    .line 428
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 424
    :cond_2
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-byte v9, v4, v1

    int-to-char v9, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, md5Char:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private onLocale()V
    .locals 4

    .prologue
    const v3, 0x7f0a037a

    const/4 v2, -0x1

    .line 640
    invoke-static {p0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->invalidateOptionsMenuIfPossible(Landroid/app/Activity;)V

    .line 642
    const/high16 v0, 0x7f0a

    invoke-virtual {p0, v0}, Lcom/infraware/registration/UserRegistrationActivity;->setTitle(I)V

    .line 643
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etName:Landroid/widget/EditText;

    const v1, 0x7f0a037f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 644
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etEmail:Landroid/widget/EditText;

    const v1, 0x7f0a0380

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 646
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_tvInfo1:Landroid/widget/TextView;

    const v1, 0x7f0a0381

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 647
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_tvInfo2:Landroid/widget/TextView;

    const v1, 0x7f0a0382

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 649
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_checkAfterWeek:Landroid/widget/CheckBox;

    const v1, 0x7f0a0383

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 651
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_btnLater:Landroid/widget/Button;

    const v1, 0x7f0a0384

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 652
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_btnRegister:Landroid/widget/Button;

    const v1, 0x7f0a0385

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 654
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mUserRegisterDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mUserRegisterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_tvRegistringMsg:Landroid/widget/TextView;

    .line 657
    const v1, 0x7f0a0379

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 658
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mUserRegisterDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0a037e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mNetErrDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mNetErrDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mNetErrDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 665
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mNetErrDialog:Landroid/app/AlertDialog;

    iget v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->mPopupMsg:I

    invoke-virtual {p0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mNetErrDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 667
    const v1, 0x7f0a037c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 668
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mNetErrDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 669
    const v1, 0x7f0a037d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mPopupDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 676
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mPopupDialog:Landroid/app/AlertDialog;

    iget v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->mPopupMsg:I

    invoke-virtual {p0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 678
    const v1, 0x7f0a037b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 681
    :cond_2
    return-void
.end method

.method private onToastMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "a_strToastText"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oContext:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 621
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 614
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oContext:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oToast:Landroid/widget/Toast;

    .line 620
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_1
.end method

.method private setControlAction()V
    .locals 4

    .prologue
    .line 319
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/text/InputFilter;

    .line 320
    .local v1, filters:[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Lcom/infraware/registration/UserRegistrationActivity$2;

    invoke-direct {v3, p0}, Lcom/infraware/registration/UserRegistrationActivity$2;-><init>(Lcom/infraware/registration/UserRegistrationActivity;)V

    aput-object v3, v1, v2

    .line 333
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etName:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 335
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etName:Landroid/widget/EditText;

    new-instance v3, Lcom/infraware/registration/UserRegistrationActivity$3;

    invoke-direct {v3, p0}, Lcom/infraware/registration/UserRegistrationActivity$3;-><init>(Lcom/infraware/registration/UserRegistrationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 349
    new-instance v0, Lcom/infraware/registration/MailInputFilter;

    invoke-virtual {p0}, Lcom/infraware/registration/UserRegistrationActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/infraware/registration/MailInputFilter;-><init>(Landroid/content/Context;)V

    .line 350
    .local v0, filter:Lcom/infraware/registration/MailInputFilter;
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/infraware/registration/MailInputFilter;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 352
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etEmail:Landroid/widget/EditText;

    new-instance v3, Lcom/infraware/registration/UserRegistrationActivity$4;

    invoke-direct {v3, p0}, Lcom/infraware/registration/UserRegistrationActivity$4;-><init>(Lcom/infraware/registration/UserRegistrationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 366
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_checkAfterWeek:Landroid/widget/CheckBox;

    .line 367
    new-instance v3, Lcom/infraware/registration/UserRegistrationActivity$5;

    invoke-direct {v3, p0}, Lcom/infraware/registration/UserRegistrationActivity$5;-><init>(Lcom/infraware/registration/UserRegistrationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 374
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_btnLater:Landroid/widget/Button;

    new-instance v3, Lcom/infraware/registration/UserRegistrationActivity$6;

    invoke-direct {v3, p0}, Lcom/infraware/registration/UserRegistrationActivity$6;-><init>(Lcom/infraware/registration/UserRegistrationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_btnRegister:Landroid/widget/Button;

    new-instance v3, Lcom/infraware/registration/UserRegistrationActivity$7;

    invoke-direct {v3, p0}, Lcom/infraware/registration/UserRegistrationActivity$7;-><init>(Lcom/infraware/registration/UserRegistrationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    return-void
.end method


# virtual methods
.method public isValidEmailAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "emailAddress"

    .prologue
    .line 454
    const-string v0, "^[\\w-\\.\\!\\#\\$\\%\\\'\\*\\+\\/\\=\\?\\^\\{\\}\\|\\~]+@([\\w-]+\\.)+[\\w-]{2,4}$"

    .line 456
    .local v0, EMAIL_REGEX:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "_newConfig"

    .prologue
    .line 625
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 627
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oLocaleType:Ljava/util/Locale;

    if-nez v0, :cond_1

    .line 628
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oLocaleType:Ljava/util/Locale;

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oLocaleType:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oLocaleType:Ljava/util/Locale;

    .line 634
    invoke-direct {p0}, Lcom/infraware/registration/UserRegistrationActivity;->onLocale()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->setContentView(I)V

    .line 101
    invoke-direct {p0}, Lcom/infraware/registration/UserRegistrationActivity;->initUI()V

    .line 103
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->mgr:Landroid/view/inputmethod/InputMethodManager;

    .line 105
    iput-object p0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oContext:Landroid/app/Activity;

    .line 106
    invoke-virtual {p0}, Lcom/infraware/registration/UserRegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oLocaleType:Ljava/util/Locale;

    .line 107
    iget-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oContext:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_oToast:Landroid/widget/Toast;

    .line 109
    invoke-static {p0}, Lcom/infraware/filemanager/FmSettingActivity;->getFmSetting_PivotLock(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-static {p0}, Lcom/infraware/filemanager/FmSettingActivity;->getFmSetting_IsLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p0, v3}, Lcom/infraware/registration/UserRegistrationActivity;->setRequestedOrientation(I)V

    .line 121
    :goto_0
    invoke-direct {p0}, Lcom/infraware/registration/UserRegistrationActivity;->setControlAction()V

    .line 122
    invoke-direct {p0}, Lcom/infraware/registration/UserRegistrationActivity;->SetEventHandler()V

    .line 124
    invoke-direct {p0}, Lcom/infraware/registration/UserRegistrationActivity;->GetRegistryData()Z

    move-result v0

    .line 125
    .local v0, bAutoRegister:Z
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_strName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_strEmail:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etEmail:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_strEmail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/infraware/registration/UserRegistrationActivity;->SetAddBtnStatus()V

    .line 133
    return-void

    .line 114
    .end local v0           #bAutoRegister:Z
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 118
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0a037a

    .line 502
    sparse-switch p1, :sswitch_data_0

    move-object v2, v4

    .line 587
    :goto_0
    return-object v2

    .line 504
    :sswitch_0
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/infraware/registration/UserRegistrationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 505
    .local v1, vi:Landroid/view/LayoutInflater;
    const v2, 0x7f03002c

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 507
    .local v0, v:Landroid/view/View;
    const v2, 0x7f0c0098

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_tvRegistringMsg:Landroid/widget/TextView;

    .line 509
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 510
    const v3, 0x7f0a037e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 511
    new-instance v3, Lcom/infraware/registration/UserRegistrationActivity$8;

    invoke-direct {v3, p0}, Lcom/infraware/registration/UserRegistrationActivity$8;-><init>(Lcom/infraware/registration/UserRegistrationActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 523
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 509
    iput-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->mUserRegisterDialog:Landroid/app/AlertDialog;

    .line 525
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->mUserRegisterDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 530
    .end local v0           #v:Landroid/view/View;
    .end local v1           #vi:Landroid/view/LayoutInflater;
    :sswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 531
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 532
    iget v3, p0, Lcom/infraware/registration/UserRegistrationActivity;->mPopupMsg:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 533
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 534
    const v3, 0x7f0a037c

    .line 535
    new-instance v4, Lcom/infraware/registration/UserRegistrationActivity$9;

    invoke-direct {v4, p0}, Lcom/infraware/registration/UserRegistrationActivity$9;-><init>(Lcom/infraware/registration/UserRegistrationActivity;)V

    .line 534
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 543
    const v3, 0x7f0a037d

    .line 544
    new-instance v4, Lcom/infraware/registration/UserRegistrationActivity$10;

    invoke-direct {v4, p0}, Lcom/infraware/registration/UserRegistrationActivity$10;-><init>(Lcom/infraware/registration/UserRegistrationActivity;)V

    .line 543
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 552
    new-instance v3, Lcom/infraware/registration/UserRegistrationActivity$11;

    invoke-direct {v3, p0}, Lcom/infraware/registration/UserRegistrationActivity$11;-><init>(Lcom/infraware/registration/UserRegistrationActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 568
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 530
    iput-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->mNetErrDialog:Landroid/app/AlertDialog;

    .line 570
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->mNetErrDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 574
    :sswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 575
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 576
    iget v3, p0, Lcom/infraware/registration/UserRegistrationActivity;->mPopupMsg:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 577
    const v3, 0x7f0a037b

    .line 578
    new-instance v4, Lcom/infraware/registration/UserRegistrationActivity$12;

    invoke-direct {v4, p0}, Lcom/infraware/registration/UserRegistrationActivity$12;-><init>(Lcom/infraware/registration/UserRegistrationActivity;)V

    .line 577
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 582
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 574
    iput-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->mPopupDialog:Landroid/app/AlertDialog;

    .line 584
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity;->mPopupDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 502
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0xbb8 -> :sswitch_1
        0xfa0 -> :sswitch_2
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 295
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/infraware/registration/UserRegistrationActivity;->setKeypadDown()V

    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 302
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 592
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 594
    sparse-switch p1, :sswitch_data_0

    .line 608
    :goto_0
    return-void

    .line 596
    :sswitch_0
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/infraware/registration/UserRegistrationActivity;->removeDialog(I)V

    goto :goto_0

    .line 600
    :sswitch_1
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/infraware/registration/UserRegistrationActivity;->removeDialog(I)V

    goto :goto_0

    .line 604
    :sswitch_2
    const/16 v0, 0xfa0

    invoke-virtual {p0, v0}, Lcom/infraware/registration/UserRegistrationActivity;->removeDialog(I)V

    goto :goto_0

    .line 594
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0xbb8 -> :sswitch_1
        0xfa0 -> :sswitch_2
    .end sparse-switch
.end method

.method public setKeypadDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 401
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mgr:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity;->mgr:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity;->m_etEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
