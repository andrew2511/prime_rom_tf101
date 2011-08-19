.class Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1$2;
.super Ljava/lang/Object;
.source "NewOrder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1$2;->this$2:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 515
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 516
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
