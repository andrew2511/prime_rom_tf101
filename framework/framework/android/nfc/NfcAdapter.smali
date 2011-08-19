.class public final Landroid/nfc/NfcAdapter;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGE:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGE"

.field public static final ACTION_LLCP_LINK_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.LLCP_LINK_STATE_CHANGED"

.field public static final ACTION_NDEF_DISCOVERED:Ljava/lang/String; = "android.nfc.action.NDEF_DISCOVERED"

.field public static final ACTION_RF_FIELD_OFF_DETECTED:Ljava/lang/String; = "android.nfc.action.RF_FIELD_OFF_DETECTED"

.field public static final ACTION_RF_FIELD_ON_DETECTED:Ljava/lang/String; = "android.nfc.action.RF_FIELD_ON_DETECTED"

.field public static final ACTION_TAG_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TAG_DISCOVERED"

.field public static final ACTION_TAG_LEFT_FIELD:Ljava/lang/String; = "android.nfc.action.TAG_LOST"

.field public static final ACTION_TECH_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TECH_DISCOVERED"

.field public static final ACTION_TRANSACTION_DETECTED:Ljava/lang/String; = "android.nfc.action.TRANSACTION_DETECTED"

.field private static final DISCOVERY_MODE_CARD_EMULATION:I = 0x2

.field private static final DISCOVERY_MODE_NFCIP1:I = 0x1

.field private static final DISCOVERY_MODE_TAG_READER:I = 0x0

.field public static final EXTRA_AID:Ljava/lang/String; = "android.nfc.extra.AID"

.field public static final EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final EXTRA_LLCP_LINK_STATE_CHANGED:Ljava/lang/String; = "android.nfc.extra.LLCP_LINK_STATE"

.field public static final EXTRA_NDEF_MESSAGES:Ljava/lang/String; = "android.nfc.extra.NDEF_MESSAGES"

.field public static final EXTRA_NEW_BOOLEAN_STATE:Ljava/lang/String; = "android.nfc.isEnabled"

.field public static final EXTRA_TAG:Ljava/lang/String; = "android.nfc.extra.TAG"

.field public static final LLCP_LINK_STATE_ACTIVATED:I = 0x0

.field public static final LLCP_LINK_STATE_DEACTIVATED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NFC"

.field private static sIsInitialized:Z

.field private static sService:Landroid/nfc/INfcAdapter;

.field private static sTagService:Landroid/nfc/INfcTag;


# instance fields
.field mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

.field mForegroundNdefPushListener:Landroid/app/OnActivityPausedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 274
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    new-instance v0, Landroid/nfc/NfcAdapter$1;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$1;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    .line 632
    new-instance v0, Landroid/nfc/NfcAdapter$2;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$2;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundNdefPushListener:Landroid/app/OnActivityPausedListener;

    .line 374
    invoke-static {}, Landroid/nfc/NfcAdapter;->setupService()Landroid/nfc/INfcAdapter;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 375
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 377
    :cond_1d
    return-void
.end method

.method public static getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    const-string v0, "NFC"

    const-string v1, "WARNING: NfcAdapter.getDefaultAdapter() is deprecated, use NfcAdapter.getDefaultAdapter(Context) instead"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    new-instance v0, Landroid/nfc/NfcAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .registers 3
    .parameter "context"

    .prologue
    .line 354
    const-string v1, "nfc"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 355
    .local v0, manager:Landroid/nfc/NfcManager;
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    return-object v1
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .registers 2

    .prologue
    .line 330
    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 331
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_a

    .line 332
    const/4 v1, 0x0

    .line 334
    :goto_9
    return-object v1

    :cond_a
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    goto :goto_9
.end method

.method private static hasNfcFeature()Z
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 289
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 290
    .local v1, pm:Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_10

    .line 291
    const-string v2, "NFC"

    const-string v3, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 298
    :goto_f
    return v2

    .line 295
    :cond_10
    :try_start_10
    const-string v2, "android.hardware.nfc"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_17

    move-result v2

    goto :goto_f

    .line 296
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 297
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "Package manager query failed, assuming no NFC feature"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    .line 298
    goto :goto_f
.end method

.method private static declared-synchronized setupService()Landroid/nfc/INfcAdapter;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 303
    const-class v1, Landroid/nfc/NfcAdapter;

    monitor-enter v1

    :try_start_4
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    if-nez v2, :cond_37

    .line 304
    const/4 v2, 0x1

    sput-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    .line 307
    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcFeature()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 308
    const-string v2, "NFC"

    const-string/jumbo v3, "this device does not have NFC support"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_45

    move-object v2, v4

    .line 324
    :goto_1a
    monitor-exit v1

    return-object v2

    .line 312
    :cond_1c
    :try_start_1c
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 313
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v2, :cond_2f

    .line 314
    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_45

    move-object v2, v4

    .line 315
    goto :goto_1a

    .line 318
    :cond_2f
    :try_start_2f
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_45
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_37} :catch_3a

    .line 324
    :cond_37
    :try_start_37
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    goto :goto_1a

    .line 319
    :catch_3a
    move-exception v2

    move-object v0, v2

    .line 320
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC Tag service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_45

    move-object v2, v4

    .line 321
    goto :goto_1a

    .line 303
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_45
    move-exception v2

    monitor-exit v1

    throw v2
.end method


# virtual methods
.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .registers 6
    .parameter "e"

    .prologue
    .line 402
    const-string v2, "NFC"

    const-string v3, "NFC service dead - attempting to recover"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v1

    .line 404
    .local v1, service:Landroid/nfc/INfcAdapter;
    if-nez v1, :cond_15

    .line 405
    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_14
    return-void

    .line 412
    :cond_15
    sput-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 414
    :try_start_17
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_1e

    goto :goto_14

    .line 415
    :catch_1e
    move-exception v2

    move-object v0, v2

    .line 416
    .local v0, ee:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC tag service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public changeNfcSecureElementCardEmulationState(Z)V
    .registers 6
    .parameter "state"

    .prologue
    .line 712
    const v1, 0xabcdef

    .line 713
    .local v1, seId:I
    if-eqz p1, :cond_15

    .line 716
    :try_start_5
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2, v1}, Landroid/nfc/INfcAdapter;->selectSecureElement(I)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 728
    :goto_a
    return-void

    .line 717
    :catch_b
    move-exception v2

    move-object v0, v2

    .line 718
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "Enable card emulation failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 723
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    :try_start_15
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->deselectSecureElement()I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_a

    .line 724
    :catch_1b
    move-exception v2

    move-object v0, v2

    .line 725
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, " card emulation failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public createNfcSecureElementConnection()Landroid/nfc/NfcSecureElement;
    .registers 4

    .prologue
    .line 699
    :try_start_0
    new-instance v1, Landroid/nfc/NfcSecureElement;

    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcSecureElementInterface()Landroid/nfc/INfcSecureElement;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/nfc/NfcSecureElement;-><init>(Landroid/nfc/INfcSecureElement;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 702
    :goto_b
    return-object v1

    .line 700
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 701
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "createNfcSecureElementConnection failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public disable()Z
    .registers 3

    .prologue
    .line 472
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->disable()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 475
    :goto_6
    return v1

    .line 473
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 474
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 475
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disableForegroundDispatch(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 550
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 552
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatchInternal(Landroid/app/Activity;Z)V

    .line 553
    return-void
.end method

.method disableForegroundDispatchInternal(Landroid/app/Activity;Z)V
    .registers 6
    .parameter "activity"
    .parameter "force"

    .prologue
    .line 564
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->disableForegroundDispatch(Landroid/content/ComponentName;)V

    .line 565
    if-nez p2, :cond_1e

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 566
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must disable forgeground dispatching while your activity is still resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_19

    .line 569
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 570
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 572
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1e
    return-void
.end method

.method public disableForegroundNdefPush(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 627
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundNdefPushListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundNdefPushInternal(Landroid/app/Activity;Z)V

    .line 630
    return-void
.end method

.method disableForegroundNdefPushInternal(Landroid/app/Activity;Z)V
    .registers 6
    .parameter "activity"
    .parameter "force"

    .prologue
    .line 641
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->disableForegroundNdefPush(Landroid/content/ComponentName;)V

    .line 642
    if-nez p2, :cond_1e

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 643
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must disable forgeground NDEF push while your activity is still resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_19

    .line 646
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 647
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 649
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1e
    return-void
.end method

.method public enable()Z
    .registers 3

    .prologue
    .line 453
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enable()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 456
    :goto_6
    return v1

    .line 454
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 455
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 456
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .registers 10
    .parameter "activity"
    .parameter "intent"
    .parameter "filters"
    .parameter "techLists"

    .prologue
    .line 514
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 515
    :cond_4
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 517
    :cond_a
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_18

    .line 518
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Foregorund dispatching can only be enabled when your activity is resumed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 522
    :cond_18
    const/4 v1, 0x0

    .line 523
    .local v1, parcel:Landroid/nfc/TechListParcel;
    if-eqz p4, :cond_24

    :try_start_1b
    array-length v3, p4

    if-lez v3, :cond_24

    .line 524
    new-instance v2, Landroid/nfc/TechListParcel;

    invoke-direct {v2, p4}, Landroid/nfc/TechListParcel;-><init>([[Ljava/lang/String;)V

    .end local v1           #parcel:Landroid/nfc/TechListParcel;
    .local v2, parcel:Landroid/nfc/TechListParcel;
    move-object v1, v2

    .line 526
    .end local v2           #parcel:Landroid/nfc/TechListParcel;
    .restart local v1       #parcel:Landroid/nfc/TechListParcel;
    :cond_24
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v3, p1, v4}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 528
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3, v1}, Landroid/nfc/INfcAdapter;->enableForegroundDispatch(Landroid/content/ComponentName;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_36} :catch_37

    .line 533
    :goto_36
    return-void

    .line 530
    :catch_37
    move-exception v3

    move-object v0, v3

    .line 531
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_36
.end method

.method public enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .registers 6
    .parameter "activity"
    .parameter "msg"

    .prologue
    .line 595
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 596
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 598
    :cond_a
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 599
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Foregorund NDEF push can only be enabled when your activity is resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :cond_18
    :try_start_18
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mForegroundNdefPushListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v1, p1, v2}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 605
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/nfc/INfcAdapter;->enableForegroundNdefPush(Landroid/content/ComponentName;Landroid/nfc/NdefMessage;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2a} :catch_2b

    .line 609
    :goto_2a
    return-void

    .line 606
    :catch_2b
    move-exception v1

    move-object v0, v1

    .line 607
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_2a
.end method

.method public getLocalNdefMessage()Landroid/nfc/NdefMessage;
    .registers 3

    .prologue
    .line 686
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->localGet()Landroid/nfc/NdefMessage;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 689
    :goto_6
    return-object v1

    .line 687
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 688
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 689
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getService()Landroid/nfc/INfcAdapter;
    .registers 2

    .prologue
    .line 384
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 385
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    return-object v0
.end method

.method public getTagService()Landroid/nfc/INfcTag;
    .registers 2

    .prologue
    .line 393
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 394
    sget-object v0, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 436
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 439
    :goto_6
    return v1

    .line 437
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 438
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 439
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setLocalNdefMessage(Landroid/nfc/NdefMessage;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 671
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->localSet(Landroid/nfc/NdefMessage;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 675
    :goto_5
    return-void

    .line 672
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 673
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_5
.end method
