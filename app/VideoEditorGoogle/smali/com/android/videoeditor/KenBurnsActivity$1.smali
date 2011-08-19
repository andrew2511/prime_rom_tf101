.class Lcom/android/videoeditor/KenBurnsActivity$1;
.super Ljava/lang/Object;
.source "KenBurnsActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/KenBurnsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/KenBurnsActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/KenBurnsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/videoeditor/KenBurnsActivity$1;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 323
    packed-switch p2, :pswitch_data_0

    .line 349
    :goto_0
    return-void

    .line 325
    :pswitch_0
    iget-object v1, p0, Lcom/android/videoeditor/KenBurnsActivity$1;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v1}, Lcom/android/videoeditor/KenBurnsActivity;->access$700(Lcom/android/videoeditor/KenBurnsActivity;)V

    goto :goto_0

    .line 330
    :pswitch_1
    iget-object v1, p0, Lcom/android/videoeditor/KenBurnsActivity$1;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v1}, Lcom/android/videoeditor/KenBurnsActivity;->access$700(Lcom/android/videoeditor/KenBurnsActivity;)V

    goto :goto_0

    .line 335
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 336
    .local v0, extra:Landroid/content/Intent;
    const-string v1, "media_item_id"

    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity$1;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-virtual {v2}, Lcom/android/videoeditor/KenBurnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "media_item_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v1, "start_rect"

    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity$1;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v2}, Lcom/android/videoeditor/KenBurnsActivity;->access$1000(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 339
    const-string v1, "end_rect"

    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity$1;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v2}, Lcom/android/videoeditor/KenBurnsActivity;->access$1100(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 340
    iget-object v1, p0, Lcom/android/videoeditor/KenBurnsActivity$1;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/videoeditor/KenBurnsActivity;->setResult(ILandroid/content/Intent;)V

    .line 341
    iget-object v1, p0, Lcom/android/videoeditor/KenBurnsActivity$1;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-virtual {v1}, Lcom/android/videoeditor/KenBurnsActivity;->finish()V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x7f08001a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
