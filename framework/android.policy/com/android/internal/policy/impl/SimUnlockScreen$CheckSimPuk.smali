.class abstract Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;
.super Ljava/lang/Thread;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPuk"
.end annotation


# instance fields
.field private final mNewPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "puk"
    .parameter "newPin"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;->mPuk:Ljava/lang/String;

    .line 231
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;->mNewPin:Ljava/lang/String;

    .line 232
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Z)V
.end method

.method public run()V
    .registers 6

    .prologue
    .line 240
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;->mNewPin:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 243
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk$1;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;Z)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 255
    .end local v1           #result:Z
    :goto_1c
    return-void

    .line 248
    :catch_1d
    move-exception v2

    move-object v0, v2

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk$2;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c
.end method
