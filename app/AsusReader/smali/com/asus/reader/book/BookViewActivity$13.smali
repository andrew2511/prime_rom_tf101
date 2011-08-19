.class Lcom/asus/reader/book/BookViewActivity$13;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/BookViewActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/BookViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2002
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$13;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 2004
    packed-switch p2, :pswitch_data_0

    .line 2016
    :goto_0
    return-void

    .line 2006
    :pswitch_0
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$13;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$5900(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2009
    :pswitch_1
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$13;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/BookViewActivity;->showDialog(I)V

    goto :goto_0

    .line 2012
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2013
    .local v0, checkIntent:Landroid/content/Intent;
    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2014
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$13;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v1, v0, v2}, Lcom/asus/reader/book/BookViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2004
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
