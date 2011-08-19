.class Lcom/android/email/activity/MessageListXL$ActionBarNavigationCallback;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarNavigationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$ActionBarNavigationCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$ActionBarNavigationCallback;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 1
    .parameter "itemPosition"
    .parameter "accountId"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$ActionBarNavigationCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p2, p3}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;J)V

    .line 691
    const/4 v0, 0x1

    return v0
.end method
