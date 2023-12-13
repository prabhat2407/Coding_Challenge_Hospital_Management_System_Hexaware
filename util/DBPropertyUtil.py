class DBPropertyUtil:
    @staticmethod
    def get_connection_properties(property_file_path='C://Users//acer//Desktop//Challenge//util//property_file.txt'):
        try:
            with open(property_file_path, 'r') as file:
                properties = {}
                for line in file:
                    key, value = line.strip().split('=')
                    properties[key.strip()] = value.strip()
                return properties
        except Exception as e:
            print(f"Error reading property file: {e}")
            return None


