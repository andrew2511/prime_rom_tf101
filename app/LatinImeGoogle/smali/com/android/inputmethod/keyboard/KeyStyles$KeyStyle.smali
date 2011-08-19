.class public interface abstract Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;
.super Ljava/lang/Object;
.source "KeyStyles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyStyles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyStyle"
.end annotation


# virtual methods
.method public abstract getBoolean(Landroid/content/res/TypedArray;IZ)Z
.end method

.method public abstract getDrawable(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getFlag(Landroid/content/res/TypedArray;II)I
.end method

.method public abstract getInt(Landroid/content/res/TypedArray;II)I
.end method

.method public abstract getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;
.end method

.method public abstract getTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;
.end method
