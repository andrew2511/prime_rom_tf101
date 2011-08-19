.class public interface abstract Lcom/android/contacts/detail/ContactDetailFragment$Listener;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onContactNotFound()V
.end method

.method public abstract onCreateRawContactRequested(Ljava/util/ArrayList;Landroid/accounts/Account;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Landroid/accounts/Account;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDeleteRequested(Landroid/net/Uri;)V
.end method

.method public abstract onEditRequested(Landroid/net/Uri;)V
.end method

.method public abstract onItemClicked(Landroid/content/Intent;)V
.end method
