.class Lcom/google/android/finsky/navigationmanager/NavigationManager$4;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/navigationmanager/NavigationManager;->createSearchMoreClickListener(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$backendId:I

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$query:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$backendId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$query:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$backendId:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->access$100(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 831
    return-void
.end method
