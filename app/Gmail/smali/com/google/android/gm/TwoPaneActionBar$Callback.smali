.class public interface abstract Lcom/google/android/gm/TwoPaneActionBar$Callback;
.super Ljava/lang/Object;
.source "TwoPaneActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/TwoPaneActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract exitSearchMode()V
.end method

.method public abstract getCurrentAccount()Ljava/lang/String;
.end method

.method public abstract getCurrentListContext()Lcom/google/android/gm/ConversationListContext;
.end method

.method public abstract navigateToAccount(Ljava/lang/String;)V
.end method
