.class Lnet/yostore/aws/view/search/SearchActivity$searchTask$3;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/SearchActivity$searchTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/search/SearchActivity$searchTask;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/SearchActivity$searchTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask$3;->this$1:Lnet/yostore/aws/view/search/SearchActivity$searchTask;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 238
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask$3;->this$1:Lnet/yostore/aws/view/search/SearchActivity$searchTask;

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goHome(Landroid/content/Context;)V

    .line 239
    return-void
.end method
