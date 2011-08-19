.class public interface abstract Lcom/google/android/apps/books/preference/LightweightPreference;
.super Ljava/lang/Object;
.source "LightweightPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;
    }
.end annotation


# virtual methods
.method public abstract bindPreference()V
.end method

.method public abstract persistPreference()V
.end method

.method public abstract setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V
.end method
