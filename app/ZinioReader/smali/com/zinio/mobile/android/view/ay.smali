.class final Lcom/zinio/mobile/android/view/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ay;->a:Lcom/zinio/mobile/android/view/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 52
    :sswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ay;->a:Lcom/zinio/mobile/android/view/WelcomeActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->e:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 55
    :sswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ay;->a:Lcom/zinio/mobile/android/view/WelcomeActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->f:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 59
    :sswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ay;->a:Lcom/zinio/mobile/android/view/WelcomeActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x7f0c0058 -> :sswitch_2
        0x7f0c0097 -> :sswitch_1
        0x7f0c0098 -> :sswitch_0
    .end sparse-switch
.end method
