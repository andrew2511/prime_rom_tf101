.class Lcom/google/android/voicesearch/PersonalizationOptInActivity$CancelListener;
.super Ljava/lang/Object;
.source "PersonalizationOptInActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/PersonalizationOptInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/PersonalizationOptInActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity$CancelListener;->this$0:Lcom/google/android/voicesearch/PersonalizationOptInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;Lcom/google/android/voicesearch/PersonalizationOptInActivity$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/PersonalizationOptInActivity$CancelListener;-><init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity$CancelListener;->this$0:Lcom/google/android/voicesearch/PersonalizationOptInActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->setResult(I)V

    .line 212
    return-void
.end method
