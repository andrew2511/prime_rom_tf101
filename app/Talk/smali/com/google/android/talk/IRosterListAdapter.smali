.class public interface abstract Lcom/google/android/talk/IRosterListAdapter;
.super Ljava/lang/Object;
.source "IRosterListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;
    }
.end annotation


# virtual methods
.method public abstract changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V
.end method

.method public abstract getActiveCallState()Lcom/google/android/talk/RosterListAdapter$CallState;
.end method

.method public abstract getCursor()Landroid/database/Cursor;
.end method

.method public abstract hasActiveChats()Z
.end method

.method public abstract init(JLandroid/app/Activity;Ljava/lang/Runnable;)V
.end method

.method public abstract isScrolling()Z
.end method

.method public abstract setAccountId(J)V
.end method

.method public abstract setActiveCallState(Lcom/google/android/talk/RosterListAdapter$CallState;)V
.end method

.method public abstract setFocus(Landroid/content/Intent;)V
.end method

.method public abstract setIncludeSelfItem(Z)V
.end method

.method public abstract setIsOnline(Z)Z
.end method

.method public abstract setNarrowLayout(Z)V
.end method

.method public abstract setNeedForceLoad(Z)V
.end method

.method public abstract setOnPresenceClickedListener(Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;)V
.end method

.method public abstract setSelfStatusCursor(Landroid/database/Cursor;)V
.end method

.method public abstract suppressIndent()V
.end method
