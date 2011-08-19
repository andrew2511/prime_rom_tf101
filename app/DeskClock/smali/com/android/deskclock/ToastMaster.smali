.class public Lcom/android/deskclock/ToastMaster;
.super Ljava/lang/Object;
.source "ToastMaster.java"


# static fields
.field private static sToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/android/deskclock/ToastMaster;->sToast:Landroid/widget/Toast;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static cancelToast()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/deskclock/ToastMaster;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/android/deskclock/ToastMaster;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 38
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/deskclock/ToastMaster;->sToast:Landroid/widget/Toast;

    .line 39
    return-void
.end method

.method public static setToast(Landroid/widget/Toast;)V
    .locals 1
    .parameter "toast"

    .prologue
    .line 30
    sget-object v0, Lcom/android/deskclock/ToastMaster;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/android/deskclock/ToastMaster;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 32
    :cond_0
    sput-object p0, Lcom/android/deskclock/ToastMaster;->sToast:Landroid/widget/Toast;

    .line 33
    return-void
.end method
