.class Lcom/google/android/voicesearch/PersonalizationOptInActivity$DisableButtonListener;
.super Ljava/lang/Object;
.source "PersonalizationOptInActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/PersonalizationOptInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableButtonListener"
.end annotation


# instance fields
.field private mSource:I

.field final synthetic this$0:Lcom/google/android/voicesearch/PersonalizationOptInActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x2

    .line 197
    iput-object p1, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity$DisableButtonListener;->this$0:Lcom/google/android/voicesearch/PersonalizationOptInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity$DisableButtonListener;->mSource:I

    .line 201
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity$DisableButtonListener;->this$0:Lcom/google/android/voicesearch/PersonalizationOptInActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->access$200(Lcom/google/android/voicesearch/PersonalizationOptInActivity;)Lcom/google/android/voicesearch/PersonalizationPrefManager;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity$DisableButtonListener;->mSource:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->setEnabled(ZI)V

    .line 204
    return-void
.end method
