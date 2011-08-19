.class public interface abstract Lcom/android/email/activity/MailboxListFragment$Callback;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAccountSelected(J)V
.end method

.method public abstract onCurrentMailboxUpdated(JLjava/lang/String;I)V
.end method

.method public abstract onMailboxSelected(JJ)V
.end method
