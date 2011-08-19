.class Lnet/yostore/aws/view/present/SettingActivity$GetAccountInfoTask;
.super Landroid/os/AsyncTask;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/present/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAccountInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/SettingActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/present/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lnet/yostore/aws/view/present/SettingActivity$GetAccountInfoTask;->this$0:Lnet/yostore/aws/view/present/SettingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .parameter "params"

    .prologue
    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/SettingActivity$GetAccountInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
