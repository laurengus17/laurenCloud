function base64ToBlob(base64String, contentType = '') {
    const byteCharacters = atob(base64String);
    const byteArrays = [];

    for (let i = 0; i < byteCharacters.length; i++) {
        byteArrays.push(byteCharacters.charCodeAt(i));
    }

    const byteArray = new Uint8Array(byteArrays);
    return new Blob([byteArray], { type: contentType });
}

async function uploadToS3() {
  const file = fileDropzone2?.value[0];
  const blob = base64ToBlob(file.base64Data, file.type);
  const file2 = new File([blob], file.name ,{ type: file.type })
  console.log(file2)
    const requestOptions = {
      method: 'PUT',
      body: file2,
    };

    const response = await fetch(licensePutUrl.value, requestOptions);

    if (!response.ok) {
      throw new Error(`Failed to upload file ${file.name}: ${response.statusText}`);
    }
}

const result = await uploadToS3();
return result;