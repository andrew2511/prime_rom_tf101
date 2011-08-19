.class Lcom/google/android/finsky/navigationmanager/NavigationManager$7;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$offerType:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 871
    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$7;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$7;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput p3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$7;->val$offerType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 874
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$7;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$7;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iget v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$7;->val$offerType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buyItem(Lcom/google/android/finsky/api/model/Document;I)V

    .line 875
    return-void
.end method
