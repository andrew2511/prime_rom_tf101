.class Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/UpdateLauncher/UpdateLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateInfo"
.end annotation


# instance fields
.field public android_path:Ljava/lang/String;

.field public build_type:Ljava/lang/String;

.field public file_name:Ljava/lang/String;

.field public last_modified:Ljava/lang/String;

.field public recovery_path:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field final synthetic this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

.field public version_num:[I


# direct methods
.method private constructor <init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/UpdateLauncher/UpdateLauncher;Lcom/asus/UpdateLauncher/UpdateLauncher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    return-void
.end method
