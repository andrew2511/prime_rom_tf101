.class Lcom/google/android/gm/TwoPaneActionBar$2;
.super Ljava/lang/Object;
.source "TwoPaneActionBar.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/TwoPaneActionBar;->updateActionBar([Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TwoPaneActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/gm/TwoPaneActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActionBar$2;->this$0:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 2
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar$2;->this$0:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-static {v0}, Lcom/google/android/gm/TwoPaneActionBar;->access$100(Lcom/google/android/gm/TwoPaneActionBar;)Lcom/google/android/gm/TwoPaneActionBar$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActionBar$2;->this$0:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActionBar;->access$000(Lcom/google/android/gm/TwoPaneActionBar;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/gm/TwoPaneActionBar$Callback;->navigateToAccount(Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x1

    return v0
.end method
