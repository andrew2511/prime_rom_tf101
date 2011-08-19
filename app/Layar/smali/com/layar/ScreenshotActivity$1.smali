.class Lcom/layar/ScreenshotActivity$1;
.super Ljava/lang/Object;
.source "ScreenshotActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ScreenshotActivity;->showUseActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ScreenshotActivity;


# direct methods
.method constructor <init>(Lcom/layar/ScreenshotActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ScreenshotActivity$1;->this$0:Lcom/layar/ScreenshotActivity;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 140
    packed-switch p2, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/layar/ScreenshotActivity$1;->this$0:Lcom/layar/ScreenshotActivity;

    invoke-static {v0}, Lcom/layar/ScreenshotActivity;->access$0(Lcom/layar/ScreenshotActivity;)V

    .line 143
    iget-object v0, p0, Lcom/layar/ScreenshotActivity$1;->this$0:Lcom/layar/ScreenshotActivity;

    invoke-static {v0, v1}, Lcom/layar/ScreenshotActivity;->access$1(Lcom/layar/ScreenshotActivity;Z)V

    goto :goto_0

    .line 146
    :pswitch_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/layar/Layar3DActivity;->SCREENSHOT_MODE:Z

    .line 147
    iget-object v0, p0, Lcom/layar/ScreenshotActivity$1;->this$0:Lcom/layar/ScreenshotActivity;

    invoke-static {v0, v1}, Lcom/layar/ScreenshotActivity;->access$1(Lcom/layar/ScreenshotActivity;Z)V

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v0, p0, Lcom/layar/ScreenshotActivity$1;->this$0:Lcom/layar/ScreenshotActivity;

    invoke-static {v0}, Lcom/layar/ScreenshotActivity;->access$2(Lcom/layar/ScreenshotActivity;)V

    .line 151
    iget-object v0, p0, Lcom/layar/ScreenshotActivity$1;->this$0:Lcom/layar/ScreenshotActivity;

    invoke-static {v0, v1}, Lcom/layar/ScreenshotActivity;->access$1(Lcom/layar/ScreenshotActivity;Z)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
