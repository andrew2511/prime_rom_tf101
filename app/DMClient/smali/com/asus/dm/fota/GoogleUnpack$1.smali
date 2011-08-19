.class Lcom/asus/dm/fota/GoogleUnpack$1;
.super Ljava/lang/Object;
.source "GoogleUnpack.java"

# interfaces
.implements Landroid/os/RecoverySystem$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/dm/fota/GoogleUnpack;->do_unpack(Ljava/lang/String;)Lcom/asus/dm/fota/UnPack$ResultCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/fota/GoogleUnpack;


# direct methods
.method constructor <init>(Lcom/asus/dm/fota/GoogleUnpack;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/asus/dm/fota/GoogleUnpack$1;->this$0:Lcom/asus/dm/fota/GoogleUnpack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 29
    const-string v0, "GoogleUnpack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read progress --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method
