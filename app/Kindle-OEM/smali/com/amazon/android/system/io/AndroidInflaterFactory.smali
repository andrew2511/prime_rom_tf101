.class public Lcom/amazon/android/system/io/AndroidInflaterFactory;
.super Ljava/lang/Object;
.source "AndroidInflaterFactory.java"

# interfaces
.implements Lcom/amazon/system/io/InflaterFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInflater()Lcom/amazon/system/io/Inflater;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/amazon/android/system/io/AndroidInflater;

    invoke-direct {v0}, Lcom/amazon/android/system/io/AndroidInflater;-><init>()V

    return-object v0
.end method
