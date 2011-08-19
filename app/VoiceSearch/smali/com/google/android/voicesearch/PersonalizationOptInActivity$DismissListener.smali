.class Lcom/google/android/voicesearch/PersonalizationOptInActivity$DismissListener;
.super Ljava/lang/Object;
.source "PersonalizationOptInActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/PersonalizationOptInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/PersonalizationOptInActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity$DismissListener;->this$0:Lcom/google/android/voicesearch/PersonalizationOptInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;Lcom/google/android/voicesearch/PersonalizationOptInActivity$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/PersonalizationOptInActivity$DismissListener;-><init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity$DismissListener;->this$0:Lcom/google/android/voicesearch/PersonalizationOptInActivity;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->finish()V

    .line 218
    return-void
.end method
