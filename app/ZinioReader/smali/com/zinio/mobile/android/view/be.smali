.class final Lcom/zinio/mobile/android/view/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/ShopActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/ShopActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/zinio/mobile/android/view/be;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 287
    :goto_0
    return-void

    .line 280
    :sswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/be;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/ShopActivity;->c(Lcom/zinio/mobile/android/view/ShopActivity;)V

    goto :goto_0

    .line 283
    :sswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/be;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/ShopActivity;->d(Lcom/zinio/mobile/android/view/ShopActivity;)V

    goto :goto_0

    .line 286
    :sswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/be;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/ShopActivity;->e(Lcom/zinio/mobile/android/view/ShopActivity;)Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setClickable(Z)V

    goto :goto_0

    .line 277
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0000 -> :sswitch_2
        0x7f0c007a -> :sswitch_0
        0x7f0c007b -> :sswitch_1
    .end sparse-switch
.end method
