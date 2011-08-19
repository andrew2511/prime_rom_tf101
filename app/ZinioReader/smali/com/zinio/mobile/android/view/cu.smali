.class final Lcom/zinio/mobile/android/view/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/zinio/mobile/android/view/cu;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cu;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cu;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 219
    :pswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cu;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->k:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 222
    :pswitch_3
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cu;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->a(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setClickable(Z)V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0000
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
