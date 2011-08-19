.class public interface abstract Lcom/nvidia/tegrazone/services/events/NVServiceEvent;
.super Ljava/lang/Object;
.source "NVServiceEvent.java"


# static fields
.field public static final ADD_FEEDBACK:I = 0x5

.field public static final CHECK_VERSION:I = 0x9

.field public static final DELETE_FEEDBACK:I = 0x6

.field public static final FAULT:Ljava/lang/String; = "fault"

.field public static final GET_ALL_GAMES:I = 0x3

.field public static final GET_ALL_NEWS:I = 0x0

.field public static final GET_COMMENTS:I = 0x8

.field public static final GET_FEATURED_GAMES:I = 0x2

.field public static final GET_GAME_GENRES:I = 0xa

.field public static final GET_LOCALIZED_URLS:I = 0xb

.field public static final GET_SELECTED_GAME:I = 0x4

.field public static final GET_SELECTED_NEWS:I = 0x1

.field public static final MODIFY_FEEDBACK:I = 0x7

.field public static final RESULT:Ljava/lang/String; = "result"


# virtual methods
.method public abstract refresh()V
.end method

.method public abstract serviceFault(II)V
.end method

.method public abstract serviceResult(I)V
.end method
