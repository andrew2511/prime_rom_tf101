.class public Lcom/android/emailcommon/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# instance fields
.field protected mExceptionType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "exceptionType"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 85
    iput p1, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 86
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "exceptionType"
    .parameter "message"

    .prologue
    .line 93
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 94
    iput p1, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 95
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "exceptionType"
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 75
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    iput p1, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 72
    return-void
.end method


# virtual methods
.method public getExceptionType()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    return v0
.end method
