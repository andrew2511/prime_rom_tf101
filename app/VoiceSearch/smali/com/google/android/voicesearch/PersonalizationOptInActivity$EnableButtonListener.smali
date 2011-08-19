.class Lcom/google/android/voicesearch/PersonalizationOptInActivity$EnableButtonListener;
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
    name = "EnableButtonListener"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mSource:I

.field final synthetic this$0:Lcom/google/android/voicesearch/PersonalizationOptInActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;Landroid/app/Activity;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x2

    .line 180
    iput-object p1, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity$EnableButtonListener;->this$0:Lcom/google/android/voicesearch/PersonalizationOptInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p2, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity$EnableButtonListener;->mActivity:Landroid/app/Activity;

    .line 182
    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity$EnableButtonListener;->mSource:I

    .line 185
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity$EnableButtonListener;->this$0:Lcom/google/android/voicesearch/PersonalizationOptInActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->access$200(Lcom/google/android/voicesearch/PersonalizationOptInActivity;)Lcom/google/android/voicesearch/PersonalizationPrefManager;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity$EnableButtonListener;->mSource:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->setEnabled(ZI)V

    .line 191
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity$EnableButtonListener;->this$0:Lcom/google/android/voicesearch/PersonalizationOptInActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->access$300(Lcom/google/android/voicesearch/PersonalizationOptInActivity;)Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity$EnableButtonListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/util/AccountHelper;->promptForPermissions(Landroid/app/Activity;)V

    .line 192
    return-void
.end method
