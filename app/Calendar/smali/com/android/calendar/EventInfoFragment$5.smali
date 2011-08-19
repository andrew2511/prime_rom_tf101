.class Lcom/android/calendar/EventInfoFragment$5;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->updateCalendar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 987
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$5;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$5;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$2000(Lcom/android/calendar/EventInfoFragment;)V

    .line 991
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$5;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->dismiss()V

    .line 992
    return-void
.end method
