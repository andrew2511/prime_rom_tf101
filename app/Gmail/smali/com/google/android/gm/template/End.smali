.class public Lcom/google/android/gm/template/End;
.super Lcom/google/android/gm/template/Command;
.source "End.java"


# instance fields
.field private final mCommandName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "commandName"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/gm/template/Command;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/gm/template/End;->mCommandName:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gm/template/End;->mCommandName:Ljava/lang/String;

    return-object v0
.end method
