.class final Lcom/zinio/mobile/android/view/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/FAQActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/FAQActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/zinio/mobile/android/view/z;->a:Lcom/zinio/mobile/android/view/FAQActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 151
    :pswitch_0
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/zinio/mobile/android/view/z;->a:Lcom/zinio/mobile/android/view/FAQActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/FAQActivity;->b(Lcom/zinio/mobile/android/view/FAQActivity;)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/z;->a:Lcom/zinio/mobile/android/view/FAQActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/FAQActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/z;->a:Lcom/zinio/mobile/android/view/FAQActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/z;->a:Lcom/zinio/mobile/android/view/FAQActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/FAQActivity;->c(Lcom/zinio/mobile/android/view/FAQActivity;)V

    goto :goto_0

    .line 164
    :pswitch_3
    iget-object v0, p0, Lcom/zinio/mobile/android/view/z;->a:Lcom/zinio/mobile/android/view/FAQActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/FAQActivity;->d(Lcom/zinio/mobile/android/view/FAQActivity;)Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setClickable(Z)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0000
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
