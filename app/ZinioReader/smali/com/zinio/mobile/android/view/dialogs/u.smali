.class final Lcom/zinio/mobile/android/view/dialogs/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/dialogs/j;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/dialogs/j;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/u;->a:Lcom/zinio/mobile/android/view/dialogs/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 448
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/zinio/mobile/android/view/dialogs/o;->a(Z)V

    .line 449
    return-void

    .line 448
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
