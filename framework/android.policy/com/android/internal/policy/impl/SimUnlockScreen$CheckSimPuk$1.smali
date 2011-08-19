.class Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk$1;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk$1;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;->onSimLockChangedResponse(Z)V

    .line 246
    return-void
.end method
