.class public Lcom/android/contacts/TwelveKeyDialer;
.super Landroid/app/Activity;
.source "TwelveKeyDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;
    }
.end annotation


# instance fields
.field private m2SecPauseMenuItem:Landroid/view/MenuItem;

.field private mAddToContactMenuItem:Landroid/view/MenuItem;

.field mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field private mDialpad:Landroid/view/View;

.field private mDialpadChooser:Landroid/widget/ListView;

.field private mDialpadChooserAdapter:Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;

.field private mDigits:Landroid/widget/EditText;

.field private mDigitsBackground:Landroid/graphics/drawable/Drawable;

.field private mDigitsEmptyBackground:Landroid/graphics/drawable/Drawable;

.field private mHaptic:Lcom/android/phone/HapticFeedback;

.field private mIsAddCallMode:Z

.field private mLastNumberDialed:Ljava/lang/String;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mVoicemailButton:Landroid/view/View;

.field private mVoicemailDialAndDeleteRow:Landroid/view/View;

.field private mWaitMenuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 112
    new-instance v0, Lcom/android/phone/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mLastNumberDialed:Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/android/phone/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    .line 142
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/TwelveKeyDialer$1;-><init>(Lcom/android/contacts/TwelveKeyDialer;)V

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 905
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/TwelveKeyDialer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dialpadChooserVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/TwelveKeyDialer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/contacts/TwelveKeyDialer;->showDialpadChooser(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/contacts/TwelveKeyDialer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/TwelveKeyDialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->updateDialAndDeleteButtonEnabledState()V

    return-void
.end method

.method private dialpadChooserVisible()Z
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initVoicemailButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1179
    .line 1181
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1186
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const v2, 0x7f0700c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mVoicemailButton:Landroid/view/View;

    .line 1187
    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mVoicemailButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1192
    :goto_1
    return-void

    :cond_0
    move v0, v3

    .line 1181
    goto :goto_0

    .line 1182
    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0

    .line 1190
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mVoicemailButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private isDigitsEmpty()Z
    .locals 1

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 634
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 635
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 636
    return-void
.end method

.method private newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    .line 1275
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1277
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1278
    return-object v0
.end method

.method private newFlashIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1269
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1270
    const-string v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1271
    return-object v0
.end method

.method private newVoicemailIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 1262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1264
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1265
    return-object v0
.end method

.method private phoneIsCdma()Z
    .locals 5

    .prologue
    .line 1074
    const/4 v1, 0x0

    .line 1076
    .local v1, isCdma:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1077
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1078
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 1083
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .line 1078
    .restart local v2       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 1080
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1081
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "TwelveKeyDialer"

    const-string v4, "phone.getActivePhoneType() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 5

    .prologue
    .line 1060
    const/4 v2, 0x0

    .line 1062
    .local v2, phoneInUse:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1063
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .line 1067
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 1063
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 1064
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1065
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "TwelveKeyDialer"

    const-string v4, "phone.isIdle() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 5

    .prologue
    .line 1090
    const/4 v2, 0x0

    .line 1092
    .local v2, phoneOffhook:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1093
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1097
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 1094
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1095
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "TwelveKeyDialer"

    const-string v4, "phone.isOffhook() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queryLastOutgoingCall()V
    .locals 2

    .prologue
    .line 1234
    const-string v1, ""

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mLastNumberDialed:Ljava/lang/String;

    .line 1235
    new-instance v0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;

    new-instance v1, Lcom/android/contacts/TwelveKeyDialer$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/TwelveKeyDialer$2;-><init>(Lcom/android/contacts/TwelveKeyDialer;)V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;-><init>(Landroid/content/Context;Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;)V

    .line 1247
    .local v0, lastCallArgs:Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallLogAsync;->getLastOutgoingCall(Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;

    .line 1248
    return-void
.end method

.method private resolveIntent()Z
    .locals 14

    .prologue
    .line 285
    const/4 v9, 0x0

    .line 289
    .local v9, ignoreState:Z
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->isChild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 291
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "ignore-state"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 298
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mIsAddCallMode:Z

    .line 301
    const/4 v11, 0x0

    .line 304
    .local v11, needToShowDialpadChooser:Z
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 305
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 307
    :cond_0
    const-string v0, "add_call_mode"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mIsAddCallMode:Z

    .line 309
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 310
    .local v13, uri:Landroid/net/Uri;
    if-eqz v13, :cond_6

    .line 311
    const-string v0, "tel"

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, data:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p0, v8, v0}, Lcom/android/contacts/TwelveKeyDialer;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .end local v8           #data:Ljava/lang/String;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    invoke-direct {p0, v11}, Lcom/android/contacts/TwelveKeyDialer;->showDialpadChooser(Z)V

    .line 363
    return v9

    .line 293
    .end local v6           #action:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #needToShowDialpadChooser:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .restart local v10       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 316
    .restart local v6       #action:Ljava/lang/String;
    .restart local v11       #needToShowDialpadChooser:Z
    .restart local v13       #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v10}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    .line 317
    .local v12, type:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "number_key"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 323
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 324
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 326
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/TwelveKeyDialer;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 339
    .end local v7           #c:Landroid/database/Cursor;
    .end local v12           #type:Ljava/lang/String;
    :cond_6
    iget-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mIsAddCallMode:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    const/4 v11, 0x1

    goto :goto_1

    .line 343
    .end local v13           #uri:Landroid/net/Uri;
    :cond_7
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    const/4 v11, 0x1

    goto :goto_1
.end method

.method private returnToInCallScreen(Z)V
    .locals 4
    .parameter "showDialpad"

    .prologue
    .line 1038
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1039
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->finish()V

    .line 1053
    return-void

    .line 1040
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1041
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TwelveKeyDialer"

    const-string v3, "phone.showCallScreenWithDialpad() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setupKeypad()V
    .locals 2

    .prologue
    .line 399
    const v1, 0x7f070065

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 400
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 403
    const v1, 0x7f070066

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    const v1, 0x7f070067

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    const v1, 0x7f070068

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    const v1, 0x7f07006b

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    const v1, 0x7f07006c

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    const v1, 0x7f07006d

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    const v1, 0x7f07003d

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    const v1, 0x7f07006e

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 414
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 417
    const v1, 0x7f07006f

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    return-void
.end method

.method private showDialpadChooser(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 872
    if-eqz p1, :cond_2

    .line 874
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 875
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooserAdapter:Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;

    if-nez v0, :cond_1

    .line 882
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;

    invoke-direct {v0, p0}, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooserAdapter:Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;

    .line 883
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooser:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooserAdapter:Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 892
    :cond_1
    :goto_0
    return-void

    .line 887
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 889
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showWait(IILjava/lang/String;)Z
    .locals 4
    .parameter "start"
    .parameter "end"
    .parameter "digits"

    .prologue
    const/16 v3, 0x3b

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1200
    if-ne p1, p2, :cond_2

    .line 1202
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    move v0, v1

    .line 1217
    :goto_0
    return v0

    .line 1205
    :cond_0
    sub-int v0, p1, v2

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 1208
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_5

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 1211
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    .line 1215
    :cond_4
    sub-int v0, p1, v2

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1217
    goto :goto_0
.end method

.method private updateDialAndDeleteButtonEnabledState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1154
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    .line 1156
    .local v0, digitsNotEmpty:Z
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1160
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneIsCdma()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneIsOffhook()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1161
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1171
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1172
    return-void

    .end local v0           #digitsNotEmpty:Z
    :cond_1
    move v0, v4

    .line 1154
    goto :goto_0

    .line 1167
    .restart local v0       #digitsNotEmpty:Z
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialButton:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2
.end method

.method private updateDialString(Ljava/lang/String;)V
    .locals 8
    .parameter "newDigits"

    .prologue
    .line 1127
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1128
    .local v0, anchor:I
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    .line 1130
    .local v3, point:I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1131
    .local v5, selectionStart:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1133
    .local v4, selectionEnd:I
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1134
    .local v1, digits:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1135
    if-ne v5, v4, :cond_0

    .line 1138
    invoke-interface {v1, v5, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1148
    :goto_0
    return-void

    .line 1140
    :cond_0
    invoke-interface {v1, v5, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1142
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1145
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 1146
    .local v2, len:I
    invoke-interface {v1, v2, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {p0, v0, v1}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->updateDialAndDeleteButtonEnabledState()V

    .line 189
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsEmptyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 167
    return-void
.end method

.method callVoicemail()V
    .locals 1

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->newVoicemailIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    .line 764
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 765
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->finish()V

    .line 766
    return-void
.end method

.method dialButtonPressed()V
    .locals 3

    .prologue
    .line 788
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 789
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneIsCdma()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneIsOffhook()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->newFlashIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    .line 814
    :goto_0
    return-void

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 796
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mLastNumberDialed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 804
    :cond_1
    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 808
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, number:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    .line 811
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 812
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->finish()V

    goto :goto_0
.end method

.method protected getContentViewResource()I
    .locals 1

    .prologue
    .line 281
    const v0, 0x7f04004e

    return v0
.end method

.method protected maybeAddNumberFormatting()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    new-instance v1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mCurrentCountryIso:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 275
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    const/4 v2, 0x7

    const/4 v1, 0x1

    .line 651
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 653
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 654
    invoke-direct {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 658
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 659
    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 663
    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 664
    invoke-direct {p0, v5}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 668
    :sswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 669
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 673
    :sswitch_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 674
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 678
    :sswitch_5
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 679
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 683
    :sswitch_6
    invoke-virtual {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 684
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 688
    :sswitch_7
    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 689
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 693
    :sswitch_8
    invoke-virtual {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 694
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 698
    :sswitch_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 699
    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 703
    :sswitch_a
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 704
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 708
    :sswitch_b
    invoke-virtual {p0, v5}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 709
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 713
    :sswitch_c
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 717
    :sswitch_d
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 718
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->dialButtonPressed()V

    goto :goto_0

    .line 722
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->callVoicemail()V

    .line 723
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->vibrate()V

    goto/16 :goto_0

    .line 727
    :sswitch_f
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 651
    :sswitch_data_0
    .sparse-switch
        0x7f07003d -> :sswitch_b
        0x7f070065 -> :sswitch_0
        0x7f070066 -> :sswitch_1
        0x7f070067 -> :sswitch_2
        0x7f070068 -> :sswitch_3
        0x7f070069 -> :sswitch_4
        0x7f07006a -> :sswitch_5
        0x7f07006b -> :sswitch_6
        0x7f07006c -> :sswitch_7
        0x7f07006d -> :sswitch_8
        0x7f07006e -> :sswitch_9
        0x7f07006f -> :sswitch_a
        0x7f0700be -> :sswitch_f
        0x7f0700c1 -> :sswitch_e
        0x7f0700c2 -> :sswitch_d
        0x7f0700c3 -> :sswitch_c
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x3

    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mCurrentCountryIso:Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 198
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v5, :cond_0

    .line 200
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->requestWindowFeature(I)Z

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getContentViewResource()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->setContentView(I)V

    .line 206
    const v3, 0x7f02001d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsBackground:Landroid/graphics/drawable/Drawable;

    .line 207
    const v3, 0x7f02001b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsEmptyBackground:Landroid/graphics/drawable/Drawable;

    .line 209
    const v3, 0x7f0700be

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    .line 210
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 211
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->maybeAddNumberFormatting()V

    .line 217
    const v3, 0x7f070065

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 218
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->setupKeypad()V

    .line 222
    :cond_1
    const v3, 0x7f0700c0

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    .line 224
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->initVoicemailButton()V

    .line 227
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const v4, 0x7f0700c2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialButton:Landroid/view/View;

    .line 229
    const v3, 0x7f0b0006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 230
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const v4, 0x7f0700c3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 237
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 239
    iput-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDelete:Landroid/view/View;

    .line 241
    const v3, 0x7f070064

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpad:Landroid/view/View;

    .line 246
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpad:Landroid/view/View;

    if-nez v3, :cond_4

    .line 247
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 253
    :goto_1
    const v3, 0x7f0700bf

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooser:Landroid/widget/ListView;

    .line 254
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 256
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->resolveIntent()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    .line 257
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 261
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    const v4, 0x7f0b0005

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-virtual {v3, p0, v4}, Lcom/android/phone/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_2
    return-void

    .line 232
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialButton:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 233
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialButton:Landroid/view/View;

    goto :goto_0

    .line 249
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    .line 262
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 263
    .local v0, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "TwelveKeyDialer"

    const-string v4, "Vibrate control bool missing."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 525
    const v0, 0x7f0c006b

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mAddToContactMenuItem:Landroid/view/MenuItem;

    .line 527
    const/4 v0, 0x2

    const v1, 0x7f0c00e6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020063

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->m2SecPauseMenuItem:Landroid/view/MenuItem;

    .line 529
    const/4 v0, 0x3

    const v1, 0x7f0c00e7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mWaitMenuItem:Landroid/view/MenuItem;

    .line 531
    return v3
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1000
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;

    .line 1002
    .local v0, item:Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;
    iget v1, v0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;->id:I

    .line 1003
    .local v1, itemId:I
    packed-switch v1, :pswitch_data_0

    .line 1026
    const-string v2, "TwelveKeyDialer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick: unexpected itemId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :goto_0
    return-void

    .line 1008
    :pswitch_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 1015
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 1022
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->showDialpadChooser(Z)V

    goto :goto_0

    .line 1003
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 639
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 647
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 641
    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->dialButtonPressed()V

    .line 643
    const/4 v0, 0x1

    goto :goto_0

    .line 639
    :pswitch_data_0
    .packed-switch 0x7f0700be
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 595
    packed-switch p1, :pswitch_data_0

    .line 618
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 597
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    sub-long v0, v5, v7

    .line 598
    .local v0, callPressDiff:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-ltz v5, :cond_0

    .line 600
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 603
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    move v5, v9

    .line 607
    goto :goto_0

    .line 610
    .end local v0           #callPressDiff:J
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    sub-long v3, v5, v7

    .line 611
    .local v3, timeDiff:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->callVoicemail()V

    :cond_1
    move v5, v9

    .line 615
    goto :goto_0

    .line 604
    .end local v3           #timeDiff:J
    .restart local v0       #callPressDiff:J
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 623
    packed-switch p1, :pswitch_data_0

    .line 629
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 625
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->dialButtonPressed()V

    .line 626
    const/4 v0, 0x1

    goto :goto_0

    .line 623
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 736
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 737
    .local v0, digits:Landroid/text/Editable;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 738
    .local v1, id:I
    sparse-switch v1, :sswitch_data_0

    move v2, v3

    .line 759
    :goto_0
    return v2

    .line 740
    :sswitch_0
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 744
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    move v2, v4

    .line 745
    goto :goto_0

    .line 748
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->callVoicemail()V

    move v2, v4

    .line 750
    goto :goto_0

    :cond_0
    move v2, v3

    .line 752
    goto :goto_0

    .line 755
    :sswitch_2
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    move v2, v4

    .line 756
    goto :goto_0

    .line 738
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070065 -> :sswitch_1
        0x7f07006e -> :sswitch_2
        0x7f0700c3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "newIntent"

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/android/contacts/TwelveKeyDialer;->setIntent(Landroid/content/Intent;)V

    .line 383
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->resolveIntent()Z

    .line 384
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 1107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1115
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1109
    :pswitch_0
    const-string v0, ","

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->updateDialString(Ljava/lang/String;)V

    move v0, v1

    .line 1110
    goto :goto_0

    .line 1112
    :pswitch_1
    const-string v0, ";"

    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->updateDialString(Ljava/lang/String;)V

    move v0, v1

    .line 1113
    goto :goto_0

    .line 1107
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 506
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 509
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 510
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 512
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v2, :cond_0

    .line 514
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2}, Landroid/media/ToneGenerator;->release()V

    .line 515
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 517
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    const-string v1, ""

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mLastNumberDialed:Ljava/lang/String;

    .line 521
    return-void

    .line 517
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 394
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 395
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 537
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dialpadChooserVisible()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v8

    .line 590
    :goto_0
    return v7

    .line 541
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 542
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mAddToContactMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 543
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->m2SecPauseMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 544
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mWaitMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    move v7, v9

    .line 590
    goto :goto_0

    .line 546
    :cond_1
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 549
    .local v0, digits:Ljava/lang/CharSequence;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "phone"

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 551
    const-string v7, "vnd.android.cursor.item/person"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mAddToContactMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 553
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mAddToContactMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 558
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 560
    .local v4, strDigits:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 561
    .local v3, selectionStart:I
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 563
    .local v2, selectionEnd:I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_4

    .line 564
    if-le v3, v2, :cond_2

    .line 566
    move v6, v3

    .line 567
    .local v6, tmp:I
    move v3, v2

    .line 568
    move v2, v6

    .line 571
    .end local v6           #tmp:I
    :cond_2
    if-eqz v3, :cond_3

    .line 573
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->m2SecPauseMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 576
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mWaitMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/contacts/TwelveKeyDialer;->showWait(IILjava/lang/String;)Z

    move-result v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 580
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->m2SecPauseMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 581
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mWaitMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 585
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 586
    .local v5, strLength:I
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mWaitMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0, v5, v5, v4}, Lcom/android/contacts/TwelveKeyDialer;->showWait(IILjava/lang/String;)Z

    move-result v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 271
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 422
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 426
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->queryLastOutgoingCall()V

    .line 429
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dtmf_tone"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mDTMFToneEnabled:Z

    .line 433
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v4}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    .line 437
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v4

    .line 438
    :try_start_0
    iget-object v5, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 443
    :try_start_1
    new-instance v5, Landroid/media/ToneGenerator;

    const/4 v6, 0x3

    const/16 v7, 0x50

    invoke-direct {v5, v6, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v5, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 444
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/contacts/TwelveKeyDialer;->setVolumeControlStream(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 450
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 455
    .local v2, parent:Landroid/app/Activity;
    if-eqz v2, :cond_1

    instance-of v4, v2, Lcom/android/contacts/DialtactsActivity;

    if-eqz v4, :cond_1

    .line 456
    check-cast v2, Lcom/android/contacts/DialtactsActivity;

    .end local v2           #parent:Landroid/app/Activity;
    invoke-virtual {v2}, Lcom/android/contacts/DialtactsActivity;->getAndClearDialUri()Landroid/net/Uri;

    move-result-object v0

    .line 457
    .local v0, dialUri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 458
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->resolveIntent()Z

    .line 465
    .end local v0           #dialUri:Landroid/net/Uri;
    :cond_1
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 466
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 477
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneIsInUse()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 478
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const v5, 0x7f0c0078

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 488
    :goto_2
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->updateDialAndDeleteButtonEnabledState()V

    .line 489
    return-void

    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_2
    move v4, v8

    .line 429
    goto :goto_0

    .line 445
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 446
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v5, "TwelveKeyDialer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception caught while creating local tone generator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1

    .line 450
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 481
    .restart local v3       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 485
    invoke-direct {p0, v8}, Lcom/android/contacts/TwelveKeyDialer;->showDialpadChooser(Z)V

    goto :goto_2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 173
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 493
    if-eqz p1, :cond_0

    .line 498
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 500
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 502
    .end local v0           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method playTone(I)V
    .locals 6
    .parameter "tone"

    .prologue
    .line 828
    iget-boolean v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDTMFToneEnabled:Z

    if-nez v2, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 838
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 839
    .local v1, ringerMode:I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 844
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 845
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v3, :cond_2

    .line 846
    const-string v3, "TwelveKeyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    monitor-exit v2

    goto :goto_0

    .line 852
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 851
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x96

    invoke-virtual {v3, p1, v4}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 852
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "data"
    .parameter "normalizedNumber"

    .prologue
    .line 368
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, dialString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v0, p2, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 373
    .local v1, digits:Landroid/text/Editable;
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 376
    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->afterTextChanged(Landroid/text/Editable;)V

    .line 378
    .end local v1           #digits:Landroid/text/Editable;
    :cond_0
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1253
    if-eqz p4, :cond_0

    .line 1254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1258
    :goto_0
    return-void

    .line 1256
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
