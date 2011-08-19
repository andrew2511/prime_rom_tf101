.class Lcom/android/contacts/activities/ContactBrowserActivity$1;
.super Ljava/lang/Object;
.source "ContactBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactBrowserActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/contacts/activities/ContactBrowserActivity$1;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$1;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactBrowserActivity;->access$900(Lcom/android/contacts/activities/ContactBrowserActivity;)V

    .line 638
    return-void
.end method
