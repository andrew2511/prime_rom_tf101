.class Lcom/android/calendar/EventInfoFragment$Attendee;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attendee"
.end annotation


# instance fields
.field mEmail:Ljava/lang/String;

.field mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "email"

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$Attendee;->mName:Ljava/lang/String;

    .line 510
    iput-object p2, p0, Lcom/android/calendar/EventInfoFragment$Attendee;->mEmail:Ljava/lang/String;

    .line 511
    return-void
.end method


# virtual methods
.method getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$Attendee;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$Attendee;->mEmail:Ljava/lang/String;

    .line 517
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$Attendee;->mName:Ljava/lang/String;

    goto :goto_0
.end method
