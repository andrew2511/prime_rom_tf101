.class Lcom/asus/reader/book/BookViewActivity$12;
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
    .line 1990
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$12;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1992
    packed-switch p2, :pswitch_data_0

    .line 1997
    :goto_0
    return-void

    .line 1994
    :pswitch_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$12;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$5900(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1992
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
